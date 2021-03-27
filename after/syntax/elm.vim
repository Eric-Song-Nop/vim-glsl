" Language: OpenGL Shading Language
" Maintainer: Sergey Tikhomirov <sergey@tikhomirov.io>

syn include @GLSLX syntax/glslx.vim
syn region GLSLX
      \ start="\[glslx|"
      \ keepend
      \ contained
      \ end="|\]"
      \ contains=@GLSLX

