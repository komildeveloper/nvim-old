--[[ local initializationOptions = {
    documentFormatting = true,
    hover = true,
    documentSymbol = true,
    codeAction = true,
    completion = true
} ]]

-- python
local flake8 = {
    lintCommand = "flake8 --ignore=E501 --stdin-display-name ${INPUT} -",
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"}
}

local isort = {formatCommand = "isort --quiet -", formatStdin = true}

local yapf = {formatCommand = "yapf --quiet", formatStdin = true}

-- lua
local luaFormat = {
    formatCommand = "luafmt --indent-count 2 --line-width 120 --stdin",
    formatStdin = true
}

local prettier = {
    formatCommand = "prettier --stdin-filepath ${INPUT}",
    formatStdin = true
}

require'lspconfig'.efm.setup {
    init_options = {documentFormatting = true},
    filetypes = {"lua", "python", "javascript", "javascriptreact"},
    settings = {
        rootMarkers = {".git/"},
        languages = {lua = {luaFormat}, python = {flake8, isort, yapf}, javascript={prettier}, javascriptreact = {prettier}}
    }
}
