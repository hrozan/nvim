-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/hrozan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/hrozan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/hrozan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/hrozan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/hrozan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\nÂ\1\0\0\5\0\b\0\0166\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\t€9\2\3\0019\2\4\0025\4\5\0B\2\2\0016\2\1\0'\4\6\0B\2\2\0029\2\a\2B\2\1\1K\0\1\0\tload luasnip/loaders/from_vscode\1\0\2\fhistory\2\17updateevents\29TextChanged,TextChangedI\15set_config\vconfig\fluasnip\frequire\npcall\0" },
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip",
    wants = { "friendly-snippets" }
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nD\0\0\4\1\4\0\0066\0\0\0009\0\1\0009\0\2\0-\2\0\0'\3\3\0D\0\3\0\0À\14term_type\21nvim_buf_get_var\bapi\bvimp\1\1\4\0\4\0\0226\1\0\0003\3\1\0B\1\2\3\15\0\1\0X\3\14€\a\2\2\0X\3\4€+\3\1\0002\0\0€L\3\2\0X\3\5€\a\2\3\0X\3\3€+\3\1\0002\0\0€L\3\2\0+\3\2\0002\0\0€L\3\2\0+\3\2\0002\0\0€L\3\2\0\thori\tvert\0\npcallÙ\3\1\0\a\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0005\4\4\0004\5\3\0005\6\3\0>\6\1\5=\5\5\0043\5\6\0=\5\a\4=\4\t\3B\1\2\1K\0\1\0\foptions\1\0\0\18custom_filter\0\foffsets\1\0\15\22buffer_close_icon\bï™•\tview\16multiwindow\16diagnostics\1\27always_show_bufferline\1\20separator_style\nthick\20show_close_icon\1\28show_buffer_close_icons\2\25enforce_regular_tabs\2\24show_tab_indicators\1\rtab_size\3\20\22max_prefix_length\3\r\20max_name_length\3\14\23right_trunc_marker\bï‚©\22left_trunc_marker\bï‚¨\18modified_icon\bï‘„\1\0\3\ttext\17File Explore\fpadding\3\1\rfiletype\rNvimTree\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    after_files = { "/home/hrozan/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\nŸ\1\0\0\a\0\b\1\0145\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\0026\4\2\0009\4\5\0049\4\6\4)\6\0\0B\4\2\0A\2\0\0?\2\0\0=\1\a\0L\0\2\0\targs\22nvim_buf_get_name\bapi\16fnameescape\afn\bvim\1\2\0\0\21--stdin-filepath\1\0\2\bexe\rprettier\nstdin\2\5€€À™\4Ÿ\1\0\0\a\0\b\1\0145\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\0026\4\2\0009\4\5\0049\4\6\4)\6\0\0B\4\2\0A\2\0\0?\2\0\0=\1\a\0L\0\2\0\targs\22nvim_buf_get_name\bapi\16fnameescape\afn\bvim\1\2\0\0\21--stdin-filepath\1\0\2\bexe\rprettier\nstdin\2\5€€À™\4Ÿ\1\0\0\a\0\b\1\0145\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\0026\4\2\0009\4\5\0049\4\6\4)\6\0\0B\4\2\0A\2\0\0?\2\0\0=\1\a\0L\0\2\0\targs\22nvim_buf_get_name\bapi\16fnameescape\afn\bvim\1\2\0\0\21--stdin-filepath\1\0\2\bexe\rprettier\nstdin\2\5€€À™\4¯\1\0\0\6\1\5\0\v5\0\0\0005\1\1\0-\2\0\0009\2\2\2-\4\0\0009\4\3\4B\4\1\0A\2\0\2>\2\3\1=\1\4\0L\0\2\0\0À\targs!get_current_buffer_file_path\16escape_path\1\6\0\0 --search-parent-directories\21--stdin-filepath\0\a--\6-\1\0\2\bexe\vstylua\nstdin\2Ñ\1\1\0\a\0\15\0\0296\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0004\5\3\0003\6\4\0>\6\1\5=\5\6\0044\5\3\0003\6\a\0>\6\1\5=\5\b\0044\5\3\0003\6\t\0>\6\1\5=\5\n\0044\5\3\0003\6\v\0>\6\1\5=\5\f\4=\4\14\3B\1\2\0012\0\0€K\0\1\0\rfiletype\1\0\0\blua\0\bvue\0\15typescript\0\rmarkdown\1\0\0\0\nsetup\14formatter\19formatter.util\frequire\0" },
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nU\0\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nÀ\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\rsections\14lualine_x\1\0\0\1\3\0\0\rencoding\rfiletype\foptions\1\0\0\1\0\3\25component_separators\5\23section_separators\5\ntheme\tauto\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["material.nvim"] = {
    config = { "\27LJ\2\nµ\1\0\0\4\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0'\1\t\0=\1\b\0006\0\6\0009\0\n\0'\2\v\0B\0\2\1K\0\1\0\25colorscheme material\bcmd\15deep ocean\19material_style\6g\bvim\fdisable\1\0\0\1\0\1\15background\2\nsetup\rmaterial\frequire\0" },
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "LuaSnip" },
    loaded = true,
    only_config = true
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\ne\0\3\v\1\4\0\v5\3\0\0006\4\1\0009\4\2\0049\4\3\4-\6\0\0\18\a\0\0\18\b\1\0\18\t\2\0\18\n\3\0B\4\6\1K\0\1\0\1À\24nvim_buf_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2Õ\5\1\2\b\0\27\0<3\2\0\0006\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\5\0B\3\4\1\18\3\2\0'\5\6\0'\6\a\0'\a\b\0B\3\4\1\18\3\2\0'\5\6\0'\6\t\0'\a\n\0B\3\4\1\18\3\2\0'\5\6\0'\6\v\0'\a\f\0B\3\4\1\18\3\2\0'\5\6\0'\6\r\0'\a\14\0B\3\4\1\18\3\2\0'\5\6\0'\6\15\0'\a\16\0B\3\4\1\18\3\2\0'\5\6\0'\6\17\0'\a\18\0B\3\4\1\18\3\2\0'\5\6\0'\6\19\0'\a\20\0B\3\4\1\18\3\2\0'\5\6\0'\6\21\0'\a\22\0B\3\4\1\18\3\2\0'\5\6\0'\6\23\0'\a\24\0B\3\4\1\18\3\2\0'\5\6\0'\6\25\0'\a\26\0B\3\4\0012\0\0€K\0\1\0+<cmd>lua vim.lsp.buf.code_action()<cr>\aca&<cmd>lua vim.lsp.buf.rename()<cr>\arn/<cmd>lua vim.lsp.buf.type_definition()<cr>\akt%<cmd>lua vim.lsp.buf.hover()<cr>\6K,<cmd>lua vim.diagnostic.goto_next()<cr>\a]d,<cmd>lua vim.diagnostic.goto_prev()<cr>\a[d*<cmd>lua vim.lsp.buf.references()<cr>\agr+<cmd>lua vim.lsp.buf.declaration()<cr>\agD.<cmd>lua vim.lsp.buf.implementation()<cr>\agi*<cmd>lua vim.lsp.buf.definition()<cr>\agd\6n\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim\0€\4\1\0\14\0\26\00016\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0015\3\5\0B\1\2\0013\1\6\0005\2\a\0006\3\b\0\18\5\2\0B\3\2\4H\6\f€'\b\t\0\18\t\6\0&\b\t\b6\t\2\0009\t\n\t9\t\v\t\18\v\b\0005\f\f\0=\a\r\f=\b\14\f=\b\15\fB\t\3\1F\6\3\3R\6ò6\3\2\0009\3\16\0039\3\17\0039\3\18\3B\3\1\0025\4\19\0006\5\b\0\18\a\4\0B\5\2\4H\b\b€8\n\t\0009\n\20\n5\f\21\0=\3\22\f=\1\23\f5\r\24\0=\r\25\fB\n\2\1F\b\3\3R\böK\0\1\0\nflags\1\0\1\26debounce_text_changes\3–\1\14on_attach\17capabilities\1\0\0\nsetup\1\6\0\0\16sumneko_lua\vyamlls\vjsonls\vbashls\rtsserver\29make_client_capabilities\rprotocol\blsp\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\npairs\1\0\4\tWarn\tï”© \tHint\tï µ \nError\tï™™ \tInfo\tï‘‰ \0\1\0\1\17virtual_text\1\vconfig\15diagnostic\bvim\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n˜\3\0\0\b\0\24\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\f\0005\4\n\0005\5\b\0005\6\4\0005\a\3\0=\a\5\0065\a\6\0=\a\a\6=\6\t\5=\5\v\4=\4\r\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\2B\0\2\1K\0\1\0\tview\1\0\2\nwidth\3(\tside\nright\24update_focused_file\1\0\2\15update_cwd\1\venable\2\23ignore_ft_on_setup\1\2\0\0\14dashboard\ffilters\1\0\1\rdotfiles\1\factions\1\0\2\15update_cwd\2\16open_on_tab\1\14open_file\1\0\0\18window_picker\1\0\1\17quit_on_open\2\fexclude\1\0\0\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\4\0\0\vnotify\vpacker\aqf\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n¯\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\1\0\2\21ensure_installed\ball\17sync_install\1\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nV\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\17auto_preview\1\15auto_close\2\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/hrozan/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nV\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\17auto_preview\1\15auto_close\2\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: material.nvim
time([[Config for material.nvim]], true)
try_loadstring("\27LJ\2\nµ\1\0\0\4\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0'\1\t\0=\1\b\0006\0\6\0009\0\n\0'\2\v\0B\0\2\1K\0\1\0\25colorscheme material\bcmd\15deep ocean\19material_style\6g\bvim\fdisable\1\0\0\1\0\1\15background\2\nsetup\rmaterial\frequire\0", "config", "material.nvim")
time([[Config for material.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nÀ\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\rsections\14lualine_x\1\0\0\1\3\0\0\rencoding\rfiletype\foptions\1\0\0\1\0\3\25component_separators\5\23section_separators\5\ntheme\tauto\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire\1\0\2\a\1\b\0\0156\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\0059\6\0\1B\2\4\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\0À\tname\vsource\1\0\1\rnvim_lsp\n[LSP]\tmenu\n%s %s\vformat\vstring\tkind’\2\0\1\t\1\f\0!-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\23€6\1\2\0'\3\3\0B\1\2\0029\1\4\1B\1\1\2\15\0\1\0X\2\14€6\1\5\0009\1\6\0019\1\a\0016\3\5\0009\3\b\0039\3\t\3'\5\n\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\v\0B\1\3\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\1À\5!<Plug>luasnip-expand-or-jump\27nvim_replace_termcodes\bapi\rfeedkeys\afn\bvim\23expand_or_jumpable\fluasnip\frequire\21select_next_item\fvisible‡\2\0\1\t\1\f\0\"-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\24€6\1\2\0'\3\3\0B\1\2\0029\1\4\1)\3ÿÿB\1\2\2\15\0\1\0X\2\14€6\1\5\0009\1\6\0019\1\a\0016\3\5\0009\3\b\0039\3\t\3'\5\n\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\v\0B\1\3\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\1À\5\28<Plug>luasnip-jump-prev\27nvim_replace_termcodes\bapi\rfeedkeys\afn\bvim\rjumpable\fluasnip\frequire\21select_prev_item\fvisibleï\6\1\0\n\0)\0D5\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0015\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0045\5\n\0003\6\t\0=\6\v\5=\5\f\0045\5\15\0009\6\r\0019\6\14\6B\6\1\2=\6\16\0059\6\r\0019\6\17\6B\6\1\2=\6\18\0059\6\r\0019\6\19\6)\büÿB\6\2\2=\6\20\0059\6\r\0019\6\19\6)\b\4\0B\6\2\2=\6\21\0059\6\r\0019\6\22\6B\6\1\2=\6\23\0059\6\r\0019\6\24\6B\6\1\2=\6\25\0059\6\r\0019\6\26\0065\b\29\0009\t\27\0019\t\28\t=\t\30\bB\6\2\2=\6\31\0053\6 \0=\6!\0053\6\"\0=\6#\5=\5\r\0049\5$\0019\5%\0054\a\4\0005\b&\0>\b\1\a5\b'\0>\b\2\a5\b(\0>\b\3\aB\5\2\2=\5%\4B\2\2\0012\0\0€K\0\1\0\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\n<C-n>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\v<Down>\21select_next_item\t<Up>\1\0\0\21select_prev_item\fmapping\15formatting\vformat\1\0\0\0\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\1\0\25\tUnit\bï¥¬\rProperty\bï° \rConstant\bï£¾\vModule\bï’‡\vStruct\bï­„\14Interface\bïƒ¨\nEvent\bïƒ§\nClass\bï´¯\rOperator\bïš”\rVariable\bï”ª\18TypeParameter\5\nField\bï° \16Constructor\bï£\15EnumMember\bï…\rFunction\bïž”\vFolder\bïŠ\vMethod\bïš¦\14Reference\bïœ†\tText\bï¾\tFile\bïœ˜\nColor\bï£—\fSnippet\bï‘\fKeyword\bï Š\tEnum\bï…\nValue\bï¢Ÿ\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n˜\3\0\0\b\0\24\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\f\0005\4\n\0005\5\b\0005\6\4\0005\a\3\0=\a\5\0065\a\6\0=\a\a\6=\6\t\5=\5\v\4=\4\r\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\2B\0\2\1K\0\1\0\tview\1\0\2\nwidth\3(\tside\nright\24update_focused_file\1\0\2\15update_cwd\1\venable\2\23ignore_ft_on_setup\1\2\0\0\14dashboard\ffilters\1\0\1\rdotfiles\1\factions\1\0\2\15update_cwd\2\16open_on_tab\1\14open_file\1\0\0\18window_picker\1\0\1\17quit_on_open\2\fexclude\1\0\0\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\4\0\0\vnotify\vpacker\aqf\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\nŸ\1\0\0\a\0\b\1\0145\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\0026\4\2\0009\4\5\0049\4\6\4)\6\0\0B\4\2\0A\2\0\0?\2\0\0=\1\a\0L\0\2\0\targs\22nvim_buf_get_name\bapi\16fnameescape\afn\bvim\1\2\0\0\21--stdin-filepath\1\0\2\bexe\rprettier\nstdin\2\5€€À™\4Ÿ\1\0\0\a\0\b\1\0145\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\0026\4\2\0009\4\5\0049\4\6\4)\6\0\0B\4\2\0A\2\0\0?\2\0\0=\1\a\0L\0\2\0\targs\22nvim_buf_get_name\bapi\16fnameescape\afn\bvim\1\2\0\0\21--stdin-filepath\1\0\2\bexe\rprettier\nstdin\2\5€€À™\4Ÿ\1\0\0\a\0\b\1\0145\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\0026\4\2\0009\4\5\0049\4\6\4)\6\0\0B\4\2\0A\2\0\0?\2\0\0=\1\a\0L\0\2\0\targs\22nvim_buf_get_name\bapi\16fnameescape\afn\bvim\1\2\0\0\21--stdin-filepath\1\0\2\bexe\rprettier\nstdin\2\5€€À™\4¯\1\0\0\6\1\5\0\v5\0\0\0005\1\1\0-\2\0\0009\2\2\2-\4\0\0009\4\3\4B\4\1\0A\2\0\2>\2\3\1=\1\4\0L\0\2\0\0À\targs!get_current_buffer_file_path\16escape_path\1\6\0\0 --search-parent-directories\21--stdin-filepath\0\a--\6-\1\0\2\bexe\vstylua\nstdin\2Ñ\1\1\0\a\0\15\0\0296\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0004\5\3\0003\6\4\0>\6\1\5=\5\6\0044\5\3\0003\6\a\0>\6\1\5=\5\b\0044\5\3\0003\6\t\0>\6\1\5=\5\n\0044\5\3\0003\6\v\0>\6\1\5=\5\f\4=\4\14\3B\1\2\0012\0\0€K\0\1\0\rfiletype\1\0\0\blua\0\bvue\0\15typescript\0\rmarkdown\1\0\0\0\nsetup\14formatter\19formatter.util\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\nD\0\0\4\1\4\0\0066\0\0\0009\0\1\0009\0\2\0-\2\0\0'\3\3\0D\0\3\0\0À\14term_type\21nvim_buf_get_var\bapi\bvimp\1\1\4\0\4\0\0226\1\0\0003\3\1\0B\1\2\3\15\0\1\0X\3\14€\a\2\2\0X\3\4€+\3\1\0002\0\0€L\3\2\0X\3\5€\a\2\3\0X\3\3€+\3\1\0002\0\0€L\3\2\0+\3\2\0002\0\0€L\3\2\0+\3\2\0002\0\0€L\3\2\0\thori\tvert\0\npcallÙ\3\1\0\a\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0005\4\4\0004\5\3\0005\6\3\0>\6\1\5=\5\5\0043\5\6\0=\5\a\4=\4\t\3B\1\2\1K\0\1\0\foptions\1\0\0\18custom_filter\0\foffsets\1\0\15\22buffer_close_icon\bï™•\tview\16multiwindow\16diagnostics\1\27always_show_bufferline\1\20separator_style\nthick\20show_close_icon\1\28show_buffer_close_icons\2\25enforce_regular_tabs\2\24show_tab_indicators\1\rtab_size\3\20\22max_prefix_length\3\r\20max_name_length\3\14\23right_trunc_marker\bï‚©\22left_trunc_marker\bï‚¨\18modified_icon\bï‘„\1\0\3\ttext\17File Explore\fpadding\3\1\rfiletype\rNvimTree\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n¯\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\1\0\2\21ensure_installed\ball\17sync_install\1\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\ne\0\3\v\1\4\0\v5\3\0\0006\4\1\0009\4\2\0049\4\3\4-\6\0\0\18\a\0\0\18\b\1\0\18\t\2\0\18\n\3\0B\4\6\1K\0\1\0\1À\24nvim_buf_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2Õ\5\1\2\b\0\27\0<3\2\0\0006\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\5\0B\3\4\1\18\3\2\0'\5\6\0'\6\a\0'\a\b\0B\3\4\1\18\3\2\0'\5\6\0'\6\t\0'\a\n\0B\3\4\1\18\3\2\0'\5\6\0'\6\v\0'\a\f\0B\3\4\1\18\3\2\0'\5\6\0'\6\r\0'\a\14\0B\3\4\1\18\3\2\0'\5\6\0'\6\15\0'\a\16\0B\3\4\1\18\3\2\0'\5\6\0'\6\17\0'\a\18\0B\3\4\1\18\3\2\0'\5\6\0'\6\19\0'\a\20\0B\3\4\1\18\3\2\0'\5\6\0'\6\21\0'\a\22\0B\3\4\1\18\3\2\0'\5\6\0'\6\23\0'\a\24\0B\3\4\1\18\3\2\0'\5\6\0'\6\25\0'\a\26\0B\3\4\0012\0\0€K\0\1\0+<cmd>lua vim.lsp.buf.code_action()<cr>\aca&<cmd>lua vim.lsp.buf.rename()<cr>\arn/<cmd>lua vim.lsp.buf.type_definition()<cr>\akt%<cmd>lua vim.lsp.buf.hover()<cr>\6K,<cmd>lua vim.diagnostic.goto_next()<cr>\a]d,<cmd>lua vim.diagnostic.goto_prev()<cr>\a[d*<cmd>lua vim.lsp.buf.references()<cr>\agr+<cmd>lua vim.lsp.buf.declaration()<cr>\agD.<cmd>lua vim.lsp.buf.implementation()<cr>\agi*<cmd>lua vim.lsp.buf.definition()<cr>\agd\6n\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim\0€\4\1\0\14\0\26\00016\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0015\3\5\0B\1\2\0013\1\6\0005\2\a\0006\3\b\0\18\5\2\0B\3\2\4H\6\f€'\b\t\0\18\t\6\0&\b\t\b6\t\2\0009\t\n\t9\t\v\t\18\v\b\0005\f\f\0=\a\r\f=\b\14\f=\b\15\fB\t\3\1F\6\3\3R\6ò6\3\2\0009\3\16\0039\3\17\0039\3\18\3B\3\1\0025\4\19\0006\5\b\0\18\a\4\0B\5\2\4H\b\b€8\n\t\0009\n\20\n5\f\21\0=\3\22\f=\1\23\f5\r\24\0=\r\25\fB\n\2\1F\b\3\3R\böK\0\1\0\nflags\1\0\1\26debounce_text_changes\3–\1\14on_attach\17capabilities\1\0\0\nsetup\1\6\0\0\16sumneko_lua\vyamlls\vjsonls\vbashls\rtsserver\29make_client_capabilities\rprotocol\blsp\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\npairs\1\0\4\tWarn\tï”© \tHint\tï µ \nError\tï™™ \tInfo\tï‘‰ \0\1\0\1\17virtual_text\1\vconfig\15diagnostic\bvim\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd cmp-nvim-lsp ]]
vim.cmd [[ packadd cmp-path ]]
vim.cmd [[ packadd LuaSnip ]]

-- Config for: LuaSnip
try_loadstring("\27LJ\2\nÂ\1\0\0\5\0\b\0\0166\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\t€9\2\3\0019\2\4\0025\4\5\0B\2\2\0016\2\1\0'\4\6\0B\2\2\0029\2\a\2B\2\1\1K\0\1\0\tload luasnip/loaders/from_vscode\1\0\2\fhistory\2\17updateevents\29TextChanged,TextChangedI\15set_config\vconfig\fluasnip\frequire\npcall\0", "config", "LuaSnip")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'friendly-snippets'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
