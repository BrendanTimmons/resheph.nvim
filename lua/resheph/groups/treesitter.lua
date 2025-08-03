local M = {}

M.highlights = function()
  local color = require("resheph/palette")

  return {
    -- Reference: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
    -- Identifiers
    ["@variable"] = { fg = color.orange },                -- Any variable name that does not have another highlight.
    ["@variable.builtin"] = { fg = color.dark_red },      -- Variable names that are defined by the languages, like this or self.
    ["@variable.parameter"] = { fg = color.dark_orange }, -- For parameters of a function.
    ["@variable.member"] = { fg = color.blue },           -- For fields.

    ["@constant"] = { link = "Constant" },                -- For constants
    ["@constant.builtin"] = { fg = color.dark_red },      -- For constant that are built in the language: nil in Lua.
    ["@constant.macro"] = { link = "Macro" },             -- For constants that are defined by macros: NULL in C.

    ["@module"] = { fg = color.gold },                    -- For identifiers referring to modules and namespaces.
    ["@label"] = { link = "Label" },                      -- For labels: label: in C and :label: in Lua.

    -- Literals
    ["@string"] = { link = "String" },                 -- For strings.
    ["@string.documentation"] = { fg = color.teal },   -- For strings documenting code (e.g. Python docstrings).
    ["@string.regexp"] = { fg = color.dark_red },      -- For regexes.
    ["@string.escape"] = { fg = color.dark_orange },   -- For escape characters within a string.
    ["@string.special"] = { link = "Special" },        -- other special strings (e.g. dates)
    ["@string.special.path"] = { link = "Special" },   -- filenames
    ["@string.special.symbol"] = { fg = color.brown }, -- symbols or atoms
    ["@string.special.url"] = { fg = color.blue },     -- urls, links and emails

    ["@character"] = { link = "Character" },           -- character literals
    ["@character.special"] = { link = "SpecialChar" }, -- special characters (e.g. wildcards)

    ["@boolean"] = { link = "Boolean" },               -- For booleans.
    ["@number"] = { link = "Number" },                 -- For all numbers
    ["@number.float"] = { link = "Float" },            -- For floats.

    -- Types
    ["@type"] = { link = "Type" },            -- For types.
    ["@type.builtin"] = { fg = color.gold },  -- For builtin types.
    ["@type.definition"] = { link = "Type" }, -- type definitions (e.g. `typedef` in C)

    ["@attribute"] = { link = "Constant" },   -- attribute annotations (e.g. Python decorators)
    ["@property"] = { fg = color.blue },      -- Same as TSField.

    -- Functions
    ["@function"] = { link = "Function" },             -- For function (calls and definitions).
    ["@function.builtin"] = { fg = color.blue },       -- For builtin functions: table.insert in Lua.
    ["@function.call"] = { link = "Function" },        -- function calls
    ["@function.macro"] = { fg = color.green },        -- For macro defined functions (calls and definitions): each macro_rules in Rust.

    ["@function.method"] = { link = "Function" },      -- For method definitions.
    ["@function.method.call"] = { link = "Function" }, -- For method calls.

    ["@constructor"] = { fg = color.gold },            -- For constructor calls and definitions: = { } in Lua, and Java constructors.
    ["@operator"] = { link = "Operator" },             -- For any operator: +, but also -> and * in C.

    -- Keywords
    ["@keyword"] = { link = "Keyword" },                      -- For keywords that don't fall in previous categories.
    ["@keyword.modifier"] = { link = "Keyword" },             -- For keywords modifying other constructs (e.g. `const`, `static`, `public`)
    ["@keyword.type"] = { link = "Keyword" },                 -- For keywords describing composite types (e.g. `struct`, `enum`)
    ["@keyword.coroutine"] = { link = "Keyword" },            -- For keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
    ["@keyword.function"] = { fg = color.dark_orange },       -- For keywords used to define a function.
    ["@keyword.operator"] = { fg = color.brown },             -- For new keyword operator
    ["@keyword.import"] = { link = "Include" },               -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
    ["@keyword.repeat"] = { link = "Repeat" },                -- For keywords related to loops.
    ["@keyword.return"] = { fg = color.green },
    ["@keyword.debug"] = { link = "Exception" },              -- For keywords related to debugging
    ["@keyword.exception"] = { link = "Exception" },          -- For exception related keywords.

    ["@keyword.conditional"] = { link = "Conditional" },      -- For keywords related to conditionnals.
    ["@keyword.conditional.ternary"] = { link = "Operator" }, -- For ternary operators (e.g. `?` / `:`)

    ["@keyword.directive"] = { link = "PreProc" },            -- various preprocessor directives & shebangs
    ["@keyword.directive.define"] = { link = "Define" },      -- preprocessor definition directives
    ["@keyword.directive.css"] = { link = "Keyword" },        -- CSS at-rules: https://developer.mozilla.org/en-US/docs/Web/CSS/At-rule.
    -- JS & derivative
    ["@keyword.export"] = { fg = color.grey },

    -- Punctuation
    ["@punctuation.delimiter"] = { link = "Delimiter" }, -- For delimiters (e.g. `;` / `.` / `,`).
    ["@punctuation.bracket"] = { fg = color.grey },      -- For brackets and parenthesis.
    ["@punctuation.special"] = { link = "Special" },     -- For special punctuation that does not fall in the categories before (e.g. `{}` in string interpolation).

    -- Comment
    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { link = "Comment" }, -- For comments documenting code

    ["@comment.error"] = { fg = color.base, bg = color.red },
    ["@comment.warning"] = { fg = color.base, bg = color.gold },
    ["@comment.hint"] = { fg = color.base, bg = color.blue },
    ["@comment.todo"] = { fg = color.base, bg = color.brown },
    ["@comment.note"] = { fg = color.base, bg = color.rosewater },

    -- Markup
    ["@markup"] = { fg = color.cyan },                    -- For strings considerated text in a markup language.
    ["@markup.strong"] = { bold = true },                 -- bold
    ["@markup.italic"] = { italic = true },               -- italic
    ["@markup.strikethrough"] = { fg = color.grey },      -- strikethrough text
    ["@markup.underline"] = { link = "Underlined" },      -- underlined text

    ["@markup.heading"] = { fg = color.blue },            -- titles like: # Example

    ["@markup.math"] = { fg = color.blue },               -- math environments (e.g. `$ ... $` in LaTeX)
    ["@markup.quote"] = { fg = color.dark_orange },       -- block quotes
    ["@markup.environment"] = { fg = color.dark_orange }, -- text environments of markup languages
    ["@markup.environment.name"] = { fg = color.blue },   -- text indicating the type of an environment

    ["@markup.link"] = { fg = color.green },              -- text references, footnotes, citations, etc.
    ["@markup.link.label"] = { fg = color.debug },        -- link, reference descriptions
    ["@markup.link.url"] = { fg = color.blue },           -- urls, links and emails

    ["@markup.raw"] = { fg = color.gold },                -- used for inline code in markdown and for doc in python (""")

    ["@markup.list"] = { fg = color.teal },
    ["@markup.list.checked"] = { fg = color.green },  -- todo notes
    ["@markup.list.unchecked"] = { fg = color.grey }, -- todo notes

    -- Diff
    ["@diff.plus"] = { link = "diffAdded" },    -- added text (for diff files)
    ["@diff.minus"] = { link = "diffRemoved" }, -- deleted text (for diff files)
    ["@diff.delta"] = { link = "diffChanged" }, -- deleted text (for diff files)

    -- Tags
    ["@tag"] = { fg = color.blue },                          -- Tags like HTML tag names.
    ["@tag.builtin"] = { fg = color.blue },                  -- JSX tag names.
    ["@tag.attribute"] = { fg = color.gold, italic = true }, -- XML/HTML attributes (foo in foo="bar").
    ["@tag.delimiter"] = { fg = color.dark_cyan },           -- Tag delimiter like < > /

    -- Misc
    ["@error"] = { link = "Error" },

    -- Language specific:
    -- bash
    ["@function.builtin.bash"] = { fg = color.red },

    -- markdown
    ["@markup.heading.1.markdown"] = { link = "rainbow1" },
    ["@markup.heading.2.markdown"] = { link = "rainbow2" },
    ["@markup.heading.3.markdown"] = { link = "rainbow3" },
    ["@markup.heading.4.markdown"] = { link = "rainbow4" },
    ["@markup.heading.5.markdown"] = { link = "rainbow5" },
    ["@markup.heading.6.markdown"] = { link = "rainbow6" },

    -- java
    ["@constant.java"] = { fg = color.teal },

    -- css
    ["@property.css"] = { fg = color.blue },
    ["@property.id.css"] = { fg = color.gold },
    ["@property.class.css"] = { fg = color.gold },
    ["@type.css"] = { fg = color.debug },
    ["@type.tag.css"] = { fg = color.blue },
    ["@string.plain.css"] = { fg = color.debug },
    ["@number.css"] = { fg = color.debug },

    -- toml
    ["@property.toml"] = { fg = color.blue }, -- Differentiates between string and properties

    -- json
    ["@label.json"] = { fg = color.blue }, -- For labels: label: in C and :label: in Lua.

    -- lua
    ["@constructor.lua"] = { link = "@punctuation.bracket" }, -- For constructor calls and definitions: = { } in Lua.

    -- yaml
    ["@variable.member.yaml"] = { fg = color.blue }, -- For fields.
    ["@variable.member.nix"] = { fg = color.blue },

    -- Ruby
    ["@string.special.symbol.ruby"] = { fg = color.brown },

    -- PHP
    ["@function.method.php"] = { link = "Function" },
    ["@function.method.call.php"] = { link = "Function" },

    -- C/CPP
    ["@property.cpp"] = { fg = color.debug },

    -- gitcommit
    ["@comment.warning.gitcommit"] = { fg = color.gold },

    -- gitignore
    ["@string.special.path.gitignore"] = { fg = color.debug },

    -- Misc
    gitcommitSummary = { fg = color.gold },
    zshKSHFunction = { link = "Function" },

  }
end

return M
