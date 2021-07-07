--[[ local initializationOptions = {
    documentFormatting = true,
    hover = true,
    documentSymbol = true,
    codeAction = true,
    completion = true
} ]] -- python
local flake8 = {
    lintCommand = "flake8 --ignore=E501 --stdin-display-name ${INPUT} -",
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"}
}

local isort = {formatCommand = "isort --quiet -", formatStdin = true}

local yapf = {formatCommand = "yapf --quiet", formatStdin = true}

-- lua
local luaFormat = {
    -- formatCommand = "lua-format --indent-count 2 --line-width 120 --stdin",
    formatCommand = "lua-format -i",
    formatStdin = true
}

local prettier = {
    formatCommand = "prettier --stdin-filepath ${INPUT}",
    formatStdin = true
}

local eslint = {
    lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
    lintIgnoreExitCode = true,
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"},
    formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename ${INPUT}",
    formatStdin = true
}

require'lspconfig'.efm.setup {
    init_options = {documentFormatting = true},
    filetypes = {"lua", "python", "javascript", "javascriptreact"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {luaFormat},
            python = {flake8, isort, yapf},
            javascript = {prettier, eslint},
            javascriptreact = {prettier, eslint}
        }
    }
}
