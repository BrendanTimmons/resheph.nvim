local M = {}

M.highlights = function()
  local color = require("resheph/palette")

  return {
    ColorColumn = { bg = color.red },                         -- used for the columns set with 'colorcolumn'
    Conceal = { fg = color.grey },                            -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = color.bg, bg = color.fg },                -- character under the cursor
    lCursor = { fg = color.bg, bg = color.fg },               -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { fg = color.bg, bg = color.fg },              -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = { bg = color.bg },                         -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = color.dark_grey, },                   -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if forecrust (ctermfg OR guifg) is not set.
    Directory = { fg = color.dark_cyan },                     -- directory names (and other special names in listings)
    EndOfBuffer = { fg = color.dark_grey },                   -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg = { fg = color.red },                            -- error messages on the command line
    MsgArea = { fg = color.grey },                            -- error messages on the command line
    Folded = { fg = color.blue, bg = color.none },            -- line used for closed folds
    FoldColumn = { fg = color.grey },                         -- 'foldcolumn'
    SignColumn = { fg = color.grey },                         -- column where |signs| are displayed
    SignColumnSB = { bg = color.dark_grey, fg = color.grey }, -- column where |signs| are displayed
    Substitute = { bg = color.orange, fg = color.bg },        -- |:substitute| replacement text highlighting
    LineNr = { fg = color.dark_grey },                        -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = color.grey },                       -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
    MatchParen = { fg = color.magenta, bg = color.none },     -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = color.grey },                            -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgSeparator = {},                                        -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = color.blue },                            -- |more-prompt|
    NonText = { fg = color.grey },                            -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = color.fg, bg = color.none },              -- normal text
    NormalFloat = { fg = color.fg, bg = color.none },         -- Normal text in floating windows.
    FloatBorder = { fg = color.dark_grey, bg = color.none },
    FloatTitle = { fg = color.orange, bg = color.none },      -- Title of floating windows
    FloatShadow = { fg = color.none },
    Pmenu = { bg = color.none, fg = color.grey, },            -- Popup menu: normal item.
    PmenuSel = { bg = color.dark_grey },                      -- Popup menu: selected item.
    PmenuSbar = { bg = color.dark_grey },                     -- Popup menu: scrollbar.
    PmenuThumb = { bg = color.grey },                         -- Popup menu: Thumb of the scrollbar.
    PmenuExtra = { fg = color.grey },                         -- Popup menu: normal item extra text.
    PmenuExtraSel = { fg = color.grey },                      -- Popup menu: selected item extra text.
    Question = { fg = color.blue },                           -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { bg = color.none },                       -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { bg = color.none, fg = color.magenta },         -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { bg = color.magenta, fg = color.fg },        -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch = { bg = color.magenta, fg = color.fg },        -- 'cursearch' highlighting: highlights the current search you're on differently
    SpecialKey = { link = "NonText" },                        -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
    SpellBad = { sp = color.red },                            -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = color.gold, },                          -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = color.blue },                         -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = color.green },                         -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = color.dark_grey, bg = color.none },   -- status line of current window
    StatusLineNC = { fg = color.dark_grey, bg = color.none }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine = { bg = color.dark_grey, fg = color.grey },      -- tab pages line, not active tab page label
    TabLineFill = { bg = color.none },                        -- tab pages line, where there are no labels
    TabLineSel = { link = "Normal" },                         -- tab pages line, active tab page label
    TermCursor = { fg = color.bg, bg = color.fg },            -- cursor in a focused terminal
    TermCursorNC = { fg = color.bg, bg = color.dark_grey },   -- cursor in unfocused terminals
    Title = { fg = color.blue },                              -- titles for output from ":set all", ":autocmd" etc.
    Visual = { bg = color.dark_grey },                        -- Visual mode selection
    VisualNOS = { bg = color.dark_grey },                     -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = color.gold },                         -- warning messages
    Whitespace = { fg = color.grey },                         -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { bg = color.dark_grey },                      -- current match in 'wildmenu' completion
    WinBar = { fg = color.green },
    WinBarNC = { link = "WinBar" },
    WinSeparator = { fg = color.dark_grey },

    --
    -- SYNTAX HIGHLIGHTING
    --

    Comment = { fg = color.grey },         -- just comments
    SpecialComment = { link = "Special" }, -- special things inside a comment
    Constant = { fg = color.orange },      -- (preferred) any constant
    String = { fg = color.cyan },          -- a string constant: "this is a string"
    Character = { fg = color.debug },      --  a character constant: 'c', '\n'
    Number = { fg = color.blue },          --   a number constant: 234, 0xff
    Float = { link = "Number" },           --    a floating point constant: 2.3e10
    Boolean = { fg = color.dark_red },     --  a boolean constant: TRUE, false
    Identifier = { fg = color.brown },     -- (preferred) any variable name
    Function = { fg = color.blue },        -- function name (also: methods for classes)
    Statement = { fg = color.brown },      -- (preferred) any statement
    Conditional = { fg = color.brown },    --  if, then, else, endif, switch, etc.
    Repeat = { fg = color.brown },         --   for, do, while, etc.
    Label = { fg = color.brown },          --    case, default, etc.
    Operator = { fg = color.grey },        -- "sizeof", "+", "*", etc.
    Keyword = { fg = color.grey },         --  any other keyword
    Exception = { fg = color.dark_red },   --  try, catch, throw

    PreProc = { fg = color.blue },         -- (preferred) generic Preprocessor
    Include = { fg = color.grey },         --  preprocessor #include
    Define = { link = "PreProc" },         -- preprocessor #define
    Macro = { link = "PreProc" },          -- same as Define
    PreCondit = { link = "PreProc" },      -- preprocessor #if, #else, #endif, etc.

    StorageClass = { fg = color.debug },   -- static, register, volatile, etc.
    Structure = { fg = color.dark_red },   --  struct, union, enum, etc.
    Special = { fg = color.orange },       -- (preferred) any special symbol
    Type = { fg = color.gold },            -- (preferred) int, long, char, etc.
    Typedef = { link = "Type" },           --  A typedef
    SpecialChar = { link = "Special" },    -- special character in a constant
    Tag = { fg = color.green },            -- you can use CTRL-] on this
    Delimiter = { fg = color.grey },       -- character that needs attention
    Debug = { link = "Special" },          -- debugging statements

    Underlined = {},                       -- (preferred) text that stands out, HTML links
    Bold = {},
    Italic = {},
    -- ("Ignore", below, may be invisible...)
    -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error = { fg = color.red },                       -- (preferred) any erroneous construct
    Todo = { bg = color.dark_orange, fg = color.fg }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    qfLineNr = { fg = color.brown },
    qfFileName = { fg = color.blue },
    htmlH1 = { fg = color.gold },
    htmlH2 = { fg = color.brown },
    mkdCodeDelimiter = { bg = color.debug, fg = color.fg },
    mkdCodeStart = { fg = color.debug },
    mkdCodeEnd = { fg = color.debug },

    -- debugging
    debugPC = { bg = color.none },                        -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { bg = color.bg, fg = color.grey }, -- used for breakpoint colors in terminal-debug

    -- illuminate
    illuminatedWord = { bg = color.dark_magenta },
    illuminatedCurWord = { bg = color.magenta },
    -- diff
    diffAdded = { fg = color.green },
    diffRemoved = { fg = color.red },
    diffChanged = { fg = color.blue },
    diffOldFile = { fg = color.brown },
    diffNewFile = { fg = color.gold },
    diffFile = { fg = color.blue },
    diffLine = { fg = color.grey },
    diffIndexLine = { fg = color.cyan },
    DiffAdd = { bg = color.dark_green },   -- diff mode: Added line |diff.txt|
    DiffChange = { bg = color.dark_blue }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { bg = color.dark_red },  -- diff mode: Deleted line |diff.txt|
    DiffText = { bg = color.dark_blue },   -- diff mode: Changed text within a changed line |diff.txt|

    -- NeoVim
    healthError = { fg = color.red },
    healthSuccess = { fg = color.green },
    healthWarning = { fg = color.gold },
    healthSectionDelim = { bg = color.none },

    -- misc

    -- glyphs
    GlyphPalette1 = { fg = color.red },
    GlyphPalette2 = { fg = color.cyan },
    GlyphPalette3 = { fg = color.brown },
    GlyphPalette4 = { fg = color.blue },
    GlyphPalette6 = { fg = color.green },
    GlyphPalette7 = { fg = color.fg },
    GlyphPalette9 = { fg = color.red },

    -- rainbow
    rainbow1 = { fg = color.red },
    rainbow2 = { fg = color.orange },
    rainbow3 = { fg = color.gold },
    rainbow4 = { fg = color.green },
    rainbow5 = { fg = color.blue },
    rainbow6 = { fg = color.magenta },

    -- csv
    csvCol0 = { fg = color.red },
    csvCol1 = { fg = color.orange },
    csvCol2 = { fg = color.gold },
    csvCol3 = { fg = color.green },
    csvCol4 = { fg = color.blue },
    csvCol5 = { fg = color.cyan },
    csvCol6 = { fg = color.magenta },
    csvCol7 = { fg = color.dark_red },
    csvCol8 = { fg = color.dark_orange },
  }
end

return M
