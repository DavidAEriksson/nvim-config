local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local function footer()
  local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
  local version = vim.version()
  local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

  return datetime .. "   "  .. nvim_version_info
end

-- Set header
dashboard.section.header.val = {

" ▐ ▄ ▄▄▄ .       ▌ ▐·▪  • ▌ ▄ ·. ",
"•█▌▐█▀▄.▀·▪     ▪█·█▌██ ·██ ▐███▪",
"▐█▐▐▌▐▀▀▪▄ ▄█▀▄ ▐█▐█•▐█·▐█ ▌▐▌▐█·",
"██▐█▌▐█▄▄▌▐█▌.▐▌ ███ ▐█▌██ ██▌▐█▌",
"▀▀ █▪ ▀▀▀  ▀█▄▀▪. ▀  ▀▀▀▀▀  █▪▀▀▀"

}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  > Find file", ":cd $HOME/Development | Telescope find_files<CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "  > Quit NVIM (cringe)", ":qa<CR>"),
}

dashboard.section.footer.val = footer()
-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
