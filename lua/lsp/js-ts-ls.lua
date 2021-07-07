require'lspconfig'.tsserver.setup {
    on_attach = function(client, bufnr)
        client.resolved_capabilities.document_formatting = false
    end,
    settings = {documentFormatting = false}
}
