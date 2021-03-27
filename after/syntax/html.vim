" Language: OpenGL Shading Language
" Maintainer: Sergey Tikhomirov <sergey@tikhomirov.io>

syn include @GLSLX syntax/glslx.vim
syn region ShaderScript
      \ start="<script [^>]*type=\('\|\"\)x-shader/x-\(vertex\|fragment\)\('\|\"\)[^>]*>"
      \ keepend
      \ containedin=javaScript
      \ contained
      \ end="</script>"me=s-1
      \ contains=@GLSLX,htmlScriptTag,@htmlPreproc
