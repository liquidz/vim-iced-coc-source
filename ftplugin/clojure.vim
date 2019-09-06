if exists('g:loaded_iced_coc_source')
  finish
endif
let g:loaded_iced_coc_source = 1

if !exists('g:did_coc_loaded')
  echoe 'neoclide/coc.nvim is required.'
endif

if !exists('g:vim_iced_version')
      \ || g:vim_iced_version < 1101
  echoe 'iced-coc-source: vim-iced v0.11.1 or later is required.'
endif
