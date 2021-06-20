--[[ vim.fn.sign_define("LspDiagnosticsSignError", { texthl = "LspDiagnosticsError", text = "", numhl = "LspDiagnosticsSignError"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {texthl = "LspDiagnosticsWarning", text = "", numhl = "LspDiagnosticsSignWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {texthl = "LspDiagnosticsInformation", text = "", numhl="LspDiagnosticsSignInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint", {texthl = "LspDiagnosticsHint", text = "", numhl="LspDiagnosticsSignHint"}) ]]

--[[ vim.fn.sign_define("LspDiagnosticsVirtualTextError", { texthl = "LspDiagnosticsVirtualTextError", text = "", numhl = "LspDiagnosticsVirtualTextError"})
vim.fn.sign_define("LspDiagnosticsVirtualTextWarning", {texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"})
vim.fn.sign_define("LspDiagnosticsVirtualTextInformation", {texthl = "LspDiagnosticsSignInformation", text = "", numhl="LspDiagnosticsSignInformation"})
vim.fn.sign_define("LspDiagnosticsVirtualTextHint", {texthl = "LspDiagnosticsSignHint", text = "", numhl="LspDiagnosticsSignHint"}) ]]

--[[ vim.fn.sign_define("LspDiagnosticsSignError", {text = "", texthl = "LspDiagnosticsDefaultError", numhl = "LspDiagnosticsDefaultError"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "", texthl = "LspDiagnosticsDefaultWarning", numhl = "LspDiagnosticsDefaultWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "", texthl = "LspDiagnosticsDefaultInformation", numhl = "LspDiagnosticsDefaultInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint", {text = "", texthl = "LspDiagnosticsDefaultHint", numhl = "LspDiagnosticsDefaultHint"}) ]]

vim.fn.sign_define(
    "LspDiagnosticsSignError",
    {texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError"}
)
vim.fn.sign_define(
    "LspDiagnosticsSignWarning",
    {texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"}
)
vim.fn.sign_define(
    "LspDiagnosticsSignHint",
    {texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint"}
)
vim.fn.sign_define(
    "LspDiagnosticsSignInformation",
    {texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"}
)

vim.cmd('nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>')
vim.cmd('nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>')
vim.cmd('nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>')
vim.cmd('nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>')
vim.cmd('nnoremap <silent> ca :Lspsaga code_action<CR>')
vim.cmd('nnoremap <silent> K :Lspsaga hover_doc<CR>')
vim.cmd('nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>')
vim.cmd('nnoremap <silent> <C-p> :Lspsaga diagnostic_jump_prev<CR>')
vim.cmd('nnoremap <silent> <C-n> :Lspsaga diagnostic_jump_next<CR>')

-- autoformat
--[[ vim.cmd('autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)')
vim.cmd('autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)')
vim.cmd('autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100)')

--vim.cmd('autocmd FileType java nnoremap ca <Cmd>lua require('jdtls').code_action()<CR>') ]]
