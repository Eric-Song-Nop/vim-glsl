# vim-glslx

**It is simply a fork from vim-glsl for [glslx](https://github.com/evanw/glslx) highlighting**

Vim syntax highlighting for OpenGL Shading Language

glslx synatx highlighting is supported for:

- files with extensions: `.vsh`, `.tsh`, `.gsh`, `.fsh`, and `.csh`
- files with `.glslx` extension
- HTML `<script>` tags with `type` set to `x-shader-vertex` or `x-shader-fragment`

If you need support highlighting in files with other extensions (e.g. `.vs` and `.fs`) you can add it using [autocommand](http://vimdoc.sourceforge.net/htmldoc/autocmd.html#:autocmd):

```viml
" in your .vimrc (_vimrc for Windows)
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glslx
```

or using [modeline](http://vimdoc.sourceforge.net/htmldoc/options.html#modeline) in your shader files:

```glslx
// vim: set ft=glslx:
```

## Installation

#### Using vim-plug:

Add to your `vimrc`:

```viml
Plug 'Eric-Song-Nop/vim-glslx'
```
Then reload your `vimrc` and run `:PlugInstall`.
