local M = {}

M.palette = {
  -- qud color palette
  dark_red     = "#a64a2e",
  red          = "#d74200",
  dark_orange  = "#f15f22",
  orange       = "#e99f10",
  brown        = "#98875f",
  gold         = "#cfc041",
  dark_green   = "#009403",
  green        = "#00c420",
  dark_blue    = "#0048bd",
  blue         = "#0096ff",
  dark_cyan    = "#40a4b9",
  cyan         = "#77bfcf",
  dark_magenta = "#b154cf",
  magenta      = "#da5bd6",
  dark_grey    = "#155352",
  grey         = "#b1c9c3",
  fg           = "#ffffff",
  bg           = "#0f3b3a",
  none         = "none",
  debug        = "#ff0000",

  ---------------------------------------------------------------------------
  -- CORE BACKGROUND SHADES (dark → light)
  -- bg0: Extreme darkest background. Use sparingly (e.g. backdrop, contrast)
  bg0          = "#061213",
  -- bg1: Primary editor background (Normal). Change this first when theming.
  bg1          = "#0b2424",
  -- bg2: Secondary surface (CursorLine, popup menus, subtle panels, selection bg)
  bg2          = "#0f3b3a",
  -- bg3: Elevated / emphasized surface (statusline, tabline selected, titles)
  bg3          = "#155352",

  ---------------------------------------------------------------------------
  -- CORE FOREGROUNDS (bright → dim)
  -- fg0: Maximum contrast foreground (headings, strong emphasis)
  fg0          = "#FFFFFF",
  -- fg1: Primary text (Normal fg). Your main readable color.
  fg1          = "#b1c9c3",
  -- fg2: Secondary text (less important content, doc strings, mild dim)
  fg2          = "#40a4b9",
  -- fg3: Tertiary / subtle text (line numbers, inactive, meta info)
  fg3          = "#155352",

  ---------------------------------------------------------------------------
  -- SELECTION & MISC
  -- selbg: Visual selection background, also used for inverse accents
  selbg        = "#da5bd6",
  -- selfg: Foreground inside selected regions (ensure contrast vs selbg)
  selfg        = "#ffffff",
  -- comment: Comment text + doc annotations (generally muted)
  comment      = "#155352",

  ---------------------------------------------------------------------------
  -- ACCENT / SEMANTIC COLOR SLOTS
  -- color1: Error / critical / strong statement (used for errors, statements, git removed)
  color1       = "#d74200",
  -- color2: Primary accent / info highlight (mode indicators, roots, success/add)
  color2       = "#0096ff",
  -- color3: Attention / todo / highlight matches (TODO tags, search matches)
  color3       = "#b154cf",
  -- color4: Modified / constant / neutral warm accent (constants, modified files)
  color4       = "#e99f10",
  -- color5: Type / secondary accent / soft alert (types, replace mode, interface)
  color5       = "#77bfcf",
  -- color6: Keywords / strong structural tokens / alternate error (keywords, visual mode bg, directives)
  color6       = "#009403",

  ---------------------------------------------------------------------------
  -- UI DECORATIVE & LOW EMPHASIS ELEMENTS
  -- uic1: Borders, separators, guides, non-content structural UI
  uic1         = "#155352",
}

return M
