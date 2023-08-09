local lsp = require('lsp-zero')
local lsp_util = require('lspconfig.util');
local lspconfig = require("lspconfig")

lsp.preset("recommended")

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'angularls',
    'html',
    'cssls',
    'jsonls',
    'lua_ls',
})

-- Fix Undefined global 'vim'
lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})


-- lsp.configure('denols', {
    -- root_dir = lsp_util.root_pattern("deno.json", "deno.jsonc"),
-- })

local function organize_imports()
    local params = {
        command = "_typescript.organizeImports",
        arguments = { vim.api.nvim_buf_get_name(0) },
        title = "",
    }
end

lsp.configure('tsserver', {
    root_dir = lsp_util.root_pattern("package.json"),
    commands = {
        OrganizeImports = {
            organize_imports,
            description = "Organize Imports",
        },
    },
})

-- local bin_name = 'nxls'
-- local cmd = { bin_name, '--stdio'}
-- 
-- if vim.fn.has 'win32' == 1 then
--     cmd = {'cmd.exe', '/C', bin_name, '--stdio'}
-- end
-- 
-- lsp.configure('nxls', {
--     force_setup = true,
--     cmd = cmd,
--     filetypes = { 'json', 'jsonc'},
--     root_dir = lsp_util.root_pattern('nx.json', '.git'),
--     settings = {},
-- })

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
end)

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }
})
