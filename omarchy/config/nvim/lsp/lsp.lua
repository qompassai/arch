-- lsp.lua
local M = {}
capabilities = vim.lsp.protocol.make_client_capabilities()
vim.lsp.enable({
        'hyprls',
})
vim.lsp.set_log_level 'trace'
vim.diagnostic.show(nil, nil, { virtual_text = true })
vim.lsp.document_color.enable(not vim.lsp.document_color.is_enabled())
vim.lsp.semantic_tokens.enable(not vim.lsp.semantic_tokens.is_enabled())
local function on_list(options)
        vim.fn.setqflist({}, ' ', options)
        vim.cmd.cfirst()
end
vim.lsp.buf.definition({ on_list = on_list })
vim.lsp.buf.references(nil, { on_list = on_list })
vim.lsp.buf.definition({ loclist = true })
vim.lsp.buf.references(nil, { loclist = true })
vim.lsp.config('*', {
        autostart = true,
        single_file_support = true,
        flags = {
                debounce_text_changes = 150
        },
        workspace_required = false,
        capabilities = vim.tbl_deep_extend("force",
                vim.lsp.protocol.make_client_capabilities(),
                {
                        textDocument = {
                                synchronization = {
                                        dynamicRegistration = false,
                                        willSave = false,
                                        willSaveWaitUntil = false,
                                        didSave = true,
                                        syncKind = vim.lsp.protocol.TextDocumentSyncKind.Incremental,
                                },
                                inlayHint = {
                                        dynamicRegistration = true,
                                },
                                semanticTokens = {
                                        multilineTokenSupport = true,
                                        requests = {
                                                range = true,
                                                full = {
                                                        delta = true
                                                },
                                        },
                                        tokenTypes = {},
                                        tokenModifiers = {},
                                        inlayHint = {
                                                dynamicRegistration = true,
                                        },
                                },
                        }
                }
        ),
        on_attach = function(client, bufnr)
                vim.lsp.linked_editing_range.enable(true, { client_id = client.id })
                vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
                local opts = { buffer = bufnr, silent = true }
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                vim.keymap.set("n", "<leader>f", function()
                        vim.lsp.buf.format({ async = false })
                end, opts)
                vim.keymap.set("n", "[d", vim.diagnostic.get_prev, opts)
                vim.keymap.set("n", "]d", vim.diagnostic.get__next, opts)
                if client.server_capabilities.inlayHintProvider and vim.lsp.inlay_hint then
                        vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, opts)
                end
                if client.server_capabilities.documentFormattingProvider then
                        vim.api.nvim_create_autocmd("BufWritePre", {
                                buffer = bufnr,
                                callback = function()
                                        vim.lsp.buf.format({ bufnr = bufnr, async = false })
                                end,
                        })
                end
        end,
})
vim.diagnostic.config({
        virtual_text = {
                enabled = true,
                prefix = "●",
                spacing = 4,
        },
        virtual_lines = true,
        underline = {
                severity = {
                        min = vim.diagnostic.severity.HINT,
                        max = vim.diagnostic.severity.ERROR,
                },
        },
        float = {
                border = "rounded",
                source = "if_many",
                focusable = true,
                scope = "line",
        },
        update_in_insert = false,
        severity_sort = true,
        signs = {
                text = {
                        [vim.diagnostic.severity.ERROR] = "󰅚 ",
                        [vim.diagnostic.severity.WARN]  = "󰀪 ",
                        [vim.diagnostic.severity.INFO]  = "󰋽 ",
                        [vim.diagnostic.severity.HINT]  = "󰌶 ",
                },
        },
        numhl = {
                [vim.diagnostic.severity.ERROR] = 'DiagnosticError',
                [vim.diagnostic.severity.WARN] = 'DiagnosticWarn',
                [vim.diagnostic.severity.INFO] = 'DiagnosticInfo',
                [vim.diagnostic.severity.HINT] = 'DiagnosticHint',
        },
})
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "InsertLeave" }, {
        callback = function()
                vim.lsp.codelens.refresh()
        end,
})
vim.keymap.set('i', '<c-space>', function()
        vim.lsp.completion.get()
end)
return M
