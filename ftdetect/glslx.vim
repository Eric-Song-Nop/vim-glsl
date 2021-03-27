" Language: OpenGL Shading Language
" Maintainer: Sergey Tikhomirov <sergey@tikhomirov.io>

" Extensions supported by Khronos reference compiler (with one exception, ".glslx")
" https://github.com/KhronosGroup/glslang
autocmd! BufNewFile,BufRead *.vsh,*.tsh,*.glslx,*.gsh,*.fsh,*.csh set filetype=glslx

" vim:set sts=2 sw=2 :
