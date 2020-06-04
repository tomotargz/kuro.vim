hi clear
if exists('syntax_on')
 syntax reset
endif

let g:colors_name = 'kuro'

function! s:h(group, style)
    execute "highlight" a:group
        \ "ctermfg=" (has_key(a:style, "ctermfg") ? a:style.ctermfg : "NONE")
        \ "ctermbg=" (has_key(a:style, "ctermbg") ? a:style.ctermbg : "NONE")
        \ "cterm="   (has_key(a:style, "cterm"  ) ? a:style.cterm   : "NONE")
endfunction

" Colors
let s:white1  = "255"
let s:white2  = "251"
let s:grey1  = "245"
let s:grey2  = "242"
let s:grey3  = "238"
let s:grey4  = "234"
let s:black  = "016"
let s:red    = "160"
let s:green  = "028"
let s:yellow = "142"
let s:pink   = "219"
let s:blue   = "25"

" Styles
let s:white1_text                  = {"ctermbg": s:black,  "ctermfg": s:white1}
let s:grey1_text                  = {"ctermbg": s:black,  "ctermfg": s:grey1}
let s:grey2_text                  = {"ctermbg": s:black,  "ctermfg": s:grey2}
let s:red_text                    = {"ctermbg": s:black,  "ctermfg": s:red}
let s:yellow_text                 = {"ctermbg": s:black,  "ctermfg": s:yellow}
let s:green_text                  = {"ctermbg": s:black,  "ctermfg": s:green}
let s:invisible_text              = {"ctermbg": s:black,  "ctermfg": s:black}
let s:none                        = {"ctermbg": "NONE",   "ctermfg": "NONE", "cterm": "NONE"}
let s:underline                   = {"ctermbg": "NONE",   "ctermfg": "NONE", "cterm": "underline"}
let s:blue_underline              = {"ctermbg": s:blue, "cterm": "underline"}
let s:grey3_highlight             = {"ctermbg": s:grey3}
let s:grey4_highlight             = {"ctermbg": s:grey4}
let s:black_text_white2_highlight  = {"ctermbg": s:white2,  "ctermfg": s:black}
let s:black_text_yellow_highlight = {"ctermbg": s:yellow, "ctermfg": s:black}
let s:black_text_pink_highlight   = {"ctermbg": s:pink,   "ctermfg": s:black}
let s:grey4_text_white2_highlight  = {"ctermbg": s:white2,  "ctermfg": s:grey4}
let s:green_text_grey3_highlight  = {"ctermbg": s:grey3,  "ctermfg": s:green}

" Apply style
call s:h("Normal",       s:white1_text)
call s:h("Constant",     s:white1_text)
call s:h("String",       s:white1_text)
call s:h("Character",    s:white1_text)
call s:h("Identifier",   s:white1_text)
call s:h("Statement",    s:white1_text)
call s:h("PreProc",      s:white1_text)
call s:h("Type",         s:white1_text)
call s:h("Special",      s:white1_text)
call s:h("Ignore",       s:white1_text)
call s:h("Directory",    s:white1_text)
call s:h("Folded",       s:white1_text)
call s:h("TabLineSel",   s:white1_text)
call s:h("Title",        s:white1_text)
call s:h("TabLine",      s:white1_text)
call s:h("TabLineFill",  s:white1_text)
call s:h("ErrorMsg",     s:white1_text)
call s:h("SignColumn",   s:white1_text)
call s:h("WarningMsg",   s:white1_text)
call s:h("FoldColumn",   s:white1_text)
call s:h("Error",        s:red_text)
call s:h("DiffDelete",   s:red_text)
call s:h("Todo",         s:yellow_text)
call s:h("SpellBad",     s:underline)
call s:h("SpellCap",     s:underline)
call s:h("TabLineSel",   s:underline)
call s:h("Underlined",   s:underline)
call s:h("DiffAdd",      s:green_text)
call s:h("DiffChange",   s:green_text)
call s:h("DiffText",     s:green_text_grey3_highlight)
call s:h("MatchParen",   s:underline)
call s:h("Comment",      s:grey1_text)
call s:h("LineNr",       s:grey2_text)
call s:h("CursorLineNr", s:grey2_text)
call s:h("VertSplit",    s:grey2_text)
call s:h("SpecialKey",   s:grey2_text)
call s:h("Visual",       s:grey3_highlight)
call s:h("ColorColumn",  s:grey4_highlight)
call s:h("CursorLine",   s:grey4_highlight)
call s:h("StatusLineNC", s:grey4_text_white2_highlight)
call s:h("Pmenu",        s:black_text_white2_highlight)
call s:h("PmenuSbar",    s:black_text_white2_highlight)
call s:h("PmenuThumb",   s:black_text_white2_highlight)
call s:h("StatusLine",   s:black_text_white2_highlight)
call s:h("IncSearch",    s:black_text_yellow_highlight)
call s:h("Search",       s:black_text_yellow_highlight)
call s:h("PmenuSel",     s:black_text_pink_highlight)
call s:h("NonText",      s:invisible_text)
call s:h("QuickFixLine", s:none)

set background=dark
