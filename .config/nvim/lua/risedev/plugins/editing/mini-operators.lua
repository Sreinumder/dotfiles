return {
  'echasnovski/mini.operators',
  version = '*',
  keys = {
    {"g=", mode={'n','v'}},
    {"gm", mode={'n','v'}},
    {"<leader>gs", mode={'n','v'}},
  },
  opts = {
  -- Evaluate text and replace with output
  evaluate = {
    prefix = 'g=', -- Function which does the evaluation
    func = nil,
  },

  -- Exchange text regions
  exchange = {
    prefix = '', -- Whether to reindent new text to match previous indent
    -- reindent_linewise = true,
  },

  -- Multiply (duplicate) text
  multiply = {
    prefix = 'gm', -- Function which can modify text before multiplying
    func = nil,
  },

  -- Replace text with register
  replace = {
    prefix = '', -- Whether to reindent new text to match previous indent
    reindent_linewise = true,
  },

  -- Sort text
  sort = {
    prefix = '<leader>gs', -- Function which does the sort
    func = nil,
  }
}
}
