hi clear
if exists('syntax_on')
 syntax reset
endif

let g:colors_name = 'kuro'

function! s:h(group, style)
    execute "highlight" a:group
        \ "ctermfg=" (has_key(a:style, "fg") ? a:style.fg : "NONE")
        \ "ctermbg=" (has_key(a:style, "bg") ? a:style.bg : "NONE")
        \ "cterm="   (has_key(a:style, "st") ? a:style.st : "NONE")
        \ "guifg="   (has_key(a:style, "fg") ? a:style.fg : "NONE")
        \ "guibg="   (has_key(a:style, "bg") ? a:style.bg : "NONE")
        \ "gui="     (has_key(a:style, "st") ? a:style.st : "NONE")
endfunction

" Colors
let s:white1 = "255"
let s:white2 = "251"
let s:grey1  = "245"
let s:grey2  = "242"
let s:grey3  = "238"
let s:grey4  = "234"
let s:black  = "000"
let s:red    = "009"
let s:green  = "010"
let s:yellow = "011"
let s:blue   = "014"

" Styles
let s:white1_text                 = {"bg": s:black,  "fg": s:white1}
let s:grey1_text                  = {"bg": s:black,  "fg": s:grey1}
let s:grey2_text                  = {"bg": s:black,  "fg": s:grey2}
let s:red_text                    = {"bg": s:black,  "fg": s:red}
let s:yellow_text                 = {"bg": s:black,  "fg": s:yellow}
let s:green_text                  = {"bg": s:black,  "fg": s:green}
let s:blue_text                   = {"bg": s:black,  "fg": s:blue}
let s:invisible_text              = {"bg": s:black,  "fg": s:black}
let s:none                        = {}
let s:underline                   = {"st": "underline"}
let s:grey3_highlight             = {"bg": s:grey3}
let s:grey4_highlight             = {"bg": s:grey4}
let s:black_text_white2_highlight = {"bg": s:white2,  "fg": s:black}
let s:black_text_yellow_highlight = {"bg": s:yellow, "fg": s:black}
let s:grey4_text_white2_highlight = {"bg": s:white2,  "fg": s:grey4}
let s:green_text_grey3_highlight  = {"bg": s:grey3,  "fg": s:green}
let s:white_text_grey3_highlight  = {"bg": s:grey3,  "fg": s:white1}

" Apply style
hi! link Function Normal
hi! link Constant Normal
hi! link String Normal
hi! link Character Normal
hi! link Identifier Normal
hi! link Statement Normal
hi! link PreProc Normal
hi! link Type Normal
hi! link Special Normal
hi! link Ignore Normal
hi! link Directory Normal
hi! link Folded Normal
hi! link TabLineSel Normal
hi! link Title Normal
hi! link TabLine Normal
hi! link TabLineFill Normal
hi! link ErrorMsg Normal
hi! link SignColumn Normal
hi! link FoldColumn Normal
hi! link ModeMsg Normal
call s:h("Normal", s:white1_text)

hi! link WarningMsg Todo
hi! link DiagnosticWarn Todo
call s:h("Todo", s:yellow_text)

hi! link DiffDelete Error
hi! link DiagnosticError Error
hi! link NvimInternalError Error
hi! link Removed Error
call s:h("Error", s:red_text)

hi! link SpellBad Underlined
hi! link SpellCap Underlined
hi! link TabLineSel Underlined
hi! link MatchParen Underlined
call s:h("Underlined", s:underline)

hi! link DiffAdd DiffChange
hi! link Added DiffChange
call s:h("DiffChange", s:green_text)

call s:h("DiffText", s:green_text_grey3_highlight)

hi! link Pmenu Comment
hi! link PmenuSbar Comment
hi! link PmenuThumb Comment
call s:h("Comment", s:grey1_text)

hi! link CursorLineNr LineNr
hi! link VertSplit LineNr
hi! link SpecialKey LineNr
call s:h("LineNr", s:grey2_text)

hi! link ColorColumn Visual
call s:h("Visual", s:grey3_highlight)

hi! link PmenuSel CursorLine
call s:h("CursorLine", s:white_text_grey3_highlight)

call s:h("StatusLineNC", s:grey4_text_white2_highlight)

call s:h("StatusLine", s:black_text_white2_highlight)

hi! link IncSearch Search
hi! link CurSearch Search
call s:h("Search", s:black_text_yellow_highlight)

call s:h("NonText", s:invisible_text)

call s:h("QuickFixLine", s:none)

hi! link DiagnosticHint DiagnosticInfo
hi! link Changed DiagnosticInfo
call s:h("DiagnosticInfo",  s:blue_text)

set background=dark
