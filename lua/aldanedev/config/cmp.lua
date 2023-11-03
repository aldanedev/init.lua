---@diagnostic disable: missing-fields
local M = {}

local cmp = require("cmp")
local luasnip = require("luasnip")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")

function M.setup()
 cmp.setup({
    snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body)
      end
    },
    mapping = {
      ["<Up>"] = cmp.mapping.select_prev_item(),
      ["<Down>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif luasnip.choice_active() then
          luasnip.change_choice(1)
        else
          fallback()
        end
      end
        , {"i", "s"}),
      ["<c-space>"] = cmp.mapping.complete(),
      ["<cr>"] = cmp.mapping.confirm{
        behavior = cmp.ConfirmBehavior.Insert,
        select = true
      },
      ["<esc>"] = cmp.mapping.abort()

    },
    sources = {
      { name = "nvim_lsp"},
      { name = "path"},
      { name = "luasnip"},
      { name = "buffer"},
    }
  })

  cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({tex = ""}))

  cmp.event:on("menu_opened", function()
    vim.b.copilot_suggestion_hidden = true
  end)

  cmp.event:on("menu_closed", function()
    vim.b.copilot_suggestion_hidden = false
  end)

  cmp.setup.filetype("gitcommit", {
    sources = cmp.config.sources({
      {name = "git"}
    },
    {
      {name = "buffer"}
    }) })

  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline({
      ["<Up>"] = { c = cmp.mapping.select_prev_item()},
      ["<CR>"] = { c = cmp.mapping.confirm()},
      ["<Down>"] = { c =  cmp.mapping.select_next_item()}}),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

end


return M
