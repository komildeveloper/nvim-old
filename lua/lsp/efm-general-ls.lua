require'lspconfig'.efm.setup {
    init_options = {documentFormatting = true},
    filetypes = {"lua", "python"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {
                {
                    formatCommand = "luafmt --indent-count 2 --line-width 120 --stdin",
                    formatStdin = true
                }
            },
            python = {
                {
                    lintCommand = "flake8 --stdin-display-name ${INPUT} -",
                    lintStdin = true,
                    lintFormats = "%f:%l:%c: %m",
                    formatCommand = "yapf --quiet",
                    formatStdin = true
                }
            }
        }
    }
}
