local g = vim.g

g.dashboard_custom_section = {
        a = {description = {'  Find File           '}, command = 'Telescope find_files'},
        b = {description = {'  Recently Used Files '}, command = 'Telescope oldfiles'},
        c = {description = {'  Directory Search    '}, command = 'Telescope file_browser'},
        d = {description = {'  Find Word           '}, command = 'Telescope live_grep'},
    }
