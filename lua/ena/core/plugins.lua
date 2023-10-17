local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require('lazy').setup({
	{ 'phaazon/hop.nvim' },
	{ 'nvim-neo-tree/neo-tree.nvim',
           branch = 'v3.x',
           dependencies = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons', 
				's1n7ax/nvim-window-picker','MunifTanjim/nui.nvim' },
        },
	{ 'nvim-treesitter/nvim-treesitter' },
	{ 'neovim/nvim-lspconfig' },
	{ 
	   'williamboman/mason.nvim', 
	   build = ':MasonUpdate' 
        },
	{ "baliestri/aura-theme", 
	      	-- lazy = false,
    		-- priority = 1000,
    		config = function(plugin)
      		vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
      		-- vim.cmd([[colorscheme aura-soft-dark-soft-text]])
	        -- aura-dark
         	-- aura-dark-soft-text	
		    -- aura-soft-dark
            -- aura-soft-dark-soft-text
          end	
	},
    { 'rebelot/kanagawa.nvim' },
    {  
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/nvim-cmp' ,
    },
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
})
