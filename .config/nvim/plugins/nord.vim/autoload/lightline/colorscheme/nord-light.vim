" Copyright (C) 2016-present Arctic Ice Studio <development@arcticicestudio.com>
" Copyright (C) 2016-present Sven Greb <development@svengreb.de>

" Project: Nord Vim
" Repository: https://github.com/arcticicestudio/nord-vim
" License: MIT

let s:nord_vim_version="0.15.0"
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:nord0 = ["#FFFFFF", "NONE"]
let s:nord1 = ["#ECEFF4", "NONE"]
let s:nord2 = ["#E5E9F0", 0]
let s:nord3 = ["#D8DEE9", "NONE"]
let s:nord4 = ["#434C5E", "NONE"]
let s:nord5 = ["#3B4252", 7]
let s:nord6 = ["#2E3440", 15]
let s:nord7 = ["#2E3440", 14]
let s:nord8 = ["#4C566A", 6]
let s:nord9 = ["#81A1C1", 4]
let s:nord10 = ["#5E81AC", 12]
let s:nord11 = ["#BF616A", 1]
let s:nord12 = ["#D08770", 11]
let s:nord13 = ["#EBCB8B", 3]
let s:nord14 = ["#A3BE8C", 2]
let s:nord15 = ["#B48EAD", 5]

let s:p.normal.left = [ [ s:nord1, s:nord8 ], [ s:nord5, s:nord1 ] ]
let s:p.normal.middle = [ [ s:nord5, s:nord3 ] ]
let s:p.normal.right = [ [ s:nord5, s:nord1 ], [ s:nord5, s:nord1 ] ]
let s:p.normal.warning = [ [ s:nord1, s:nord13 ] ]
let s:p.normal.error = [ [ s:nord1, s:nord11 ] ]

let s:p.inactive.left =  [ [ s:nord1, s:nord8 ], [ s:nord5, s:nord1 ] ]
let s:p.inactive.middle = g:nord_uniform_status_lines == 0 ? [ [ s:nord5, s:nord1 ] ] : [ [ s:nord5, s:nord3 ] ]
let s:p.inactive.right = [ [ s:nord5, s:nord1 ], [ s:nord5, s:nord1 ] ]

let s:p.insert.left = [ [ s:nord1, s:nord6 ], [ s:nord5, s:nord1 ] ]
let s:p.replace.left = [ [ s:nord1, s:nord13 ], [ s:nord5, s:nord1 ] ]
let s:p.visual.left = [ [ s:nord1, s:nord7 ], [ s:nord5, s:nord1 ] ]

let s:p.tabline.left = [ [ s:nord5, s:nord3 ] ]
let s:p.tabline.middle = [ [ s:nord5, s:nord3 ] ]
let s:p.tabline.right = [ [ s:nord5, s:nord3 ] ]
let s:p.tabline.tabsel = [ [ s:nord1, s:nord8 ] ]

let g:lightline#colorscheme#nord#palette = lightline#colorscheme#flatten(s:p)