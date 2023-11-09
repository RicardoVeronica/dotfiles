-- local ls = require "luasnip"
-- local types = require "luasnip.util.types"

-- local M = {}

-- function M.setup()
  -- ls.config.set_config{
    -- this tells LuaSnip to remember to keep around the last snippet
    -- you can jump back into even if you move outside of the selection
    -- history = true,

    -- this one is coll cause if you have dynamic snippets, it updates as you type
    -- updateevents = "TextChanged,TextChangedI",

    -- autosnippets:
    -- enable_autosnippets = true,

    -- ext_opts = {
      -- [types.choiceNode] = {
        -- active = {
          -- virt_text = {{ "<- Choice", "Error" }},
        -- },
      -- },
    -- },
  -- }

  -- <c-K> is my expandion key
  -- this will expand the current item or jump to the next item within the snippet
  -- vim.keymap.set({"i", "s"}, "<c-k>", function()
    -- if ls.lumpalbe(-1) then
      -- ls.jump(-1)
    -- end
  -- end, {silent = true})

  -- <c-l> is selecting within a list of options
  -- vim.keymap.set("i", "<c-l>", function ()
    -- if ls.choice_active() then
      -- ls.change_choice(1)
    -- end
  -- end)
-- end

-- return M
