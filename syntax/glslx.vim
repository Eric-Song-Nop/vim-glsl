" Language: OpenGL Shading Language
" Maintainer: Sergey Tikhomirov <sergey@tikhomirov.io>

if exists("b:current_syntax") && b:current_syntax == "glslx"
  finish
endif

" Statements
syn keyword glslxConditional if else switch case default
syn keyword glslxRepeat      for while do
syn keyword glslxStatement   discard return break continue

" Comments
syn keyword glslxTodo     contained TODO FIXME XXX NOTE
syn region  glslxCommentL start="//" skip="\\$" end="$" keepend contains=glslxTodo,@Spell
syn region  glslxComment  matchgroup=glslxCommentStart start="/\*" end="\*/" extend contains=glslxTodo,@Spell

" Preprocessor
syn region  glslxPreCondit       start="^\s*#\s*\(if\|ifdef\|ifndef\|else\|elif\|endif\)" skip="\\$" end="$" keepend
syn region  glslxDefine          start="^\s*#\s*\(define\|undef\)" skip="\\$" end="$" keepend
syn keyword glslxTokenConcat     ##
syn keyword glslxPredefinedMacro __LINE__ __FILE__ __VERSION__ GL_ES
syn region  glslxPreProc         start="^\s*#\s*\(error\|pragma\|extension\|version\|line\)" skip="\\$" end="$" keepend

" Boolean Constants
syn keyword glslxBoolean true false

" Integer Numbers
syn match glslxDecimalInt display "\<\(0\|[1-9]\d*\)[uU]\?"
syn match glslxOctalInt   display "\<0\o\+[uU]\?"
syn match glslxHexInt     display "\<0[xX]\x\+[uU]\?"

" Float Numbers
syn match glslxFloat display "\<\d\+\.\([eE][+-]\=\d\+\)\=\(lf\|LF\|f\|F\)\="
syn match glslxFloat display "\<\.\d\+\([eE][+-]\=\d\+\)\=\(lf\|LF\|f\|F\)\="
syn match glslxFloat display "\<\d\+[eE][+-]\=\d\+\(lf\|LF\|f\|F\)\="
syn match glslxFloat display "\<\d\+\.\d\+\([eE][+-]\=\d\+\)\=\(lf\|LF\|f\|F\)\="

" Swizzles
syn match glslxSwizzle display /\.[xyzw]\{1,4\}\>/
syn match glslxSwizzle display /\.[rgba]\{1,4\}\>/
syn match glslxSwizzle display /\.[stpq]\{1,4\}\>/

" Structure
syn keyword glslxStructure struct nextgroup=glslxIdentifier skipwhite skipempty

syn match glslxIdentifier contains=glslxIdentifierPrime "\%([a-zA-Z_]\)\%([a-zA-Z0-9_]\)*" display contained

" Types
syn keyword glslxType atomic_uint
syn keyword glslxType bool
syn keyword glslxType bvec2
syn keyword glslxType bvec3
syn keyword glslxType bvec4
syn keyword glslxType dmat2
syn keyword glslxType dmat2x2
syn keyword glslxType dmat2x3
syn keyword glslxType dmat2x4
syn keyword glslxType dmat3
syn keyword glslxType dmat3x2
syn keyword glslxType dmat3x3
syn keyword glslxType dmat3x4
syn keyword glslxType dmat4
syn keyword glslxType dmat4x2
syn keyword glslxType dmat4x3
syn keyword glslxType dmat4x4
syn keyword glslxType double
syn keyword glslxType dvec2
syn keyword glslxType dvec3
syn keyword glslxType dvec4
syn keyword glslxType float
syn keyword glslxType iimage1D
syn keyword glslxType iimage1DArray
syn keyword glslxType iimage2D
syn keyword glslxType iimage2DArray
syn keyword glslxType iimage2DMS
syn keyword glslxType iimage2DMSArray
syn keyword glslxType iimage2DRect
syn keyword glslxType iimage3D
syn keyword glslxType iimageBuffer
syn keyword glslxType iimageCube
syn keyword glslxType iimageCubeArray
syn keyword glslxType image1D
syn keyword glslxType image1DArray
syn keyword glslxType image2D
syn keyword glslxType image2DArray
syn keyword glslxType image2DMS
syn keyword glslxType image2DMSArray
syn keyword glslxType image2DRect
syn keyword glslxType image3D
syn keyword glslxType imageBuffer
syn keyword glslxType imageCube
syn keyword glslxType imageCubeArray
syn keyword glslxType int
syn keyword glslxType isampler1D
syn keyword glslxType isampler1DArray
syn keyword glslxType isampler2D
syn keyword glslxType isampler2DArray
syn keyword glslxType isampler2DMS
syn keyword glslxType isampler2DMSArray
syn keyword glslxType isampler2DRect
syn keyword glslxType isampler3D
syn keyword glslxType isamplerBuffer
syn keyword glslxType isamplerCube
syn keyword glslxType isamplerCubeArray
syn keyword glslxType ivec2
syn keyword glslxType ivec3
syn keyword glslxType ivec4
syn keyword glslxType mat2
syn keyword glslxType mat2x2
syn keyword glslxType mat2x3
syn keyword glslxType mat2x4
syn keyword glslxType mat3
syn keyword glslxType mat3x2
syn keyword glslxType mat3x3
syn keyword glslxType mat3x4
syn keyword glslxType mat4
syn keyword glslxType mat4x2
syn keyword glslxType mat4x3
syn keyword glslxType mat4x4
syn keyword glslxType sampler1D
syn keyword glslxType sampler1DArray
syn keyword glslxType sampler1DArrayShadow
syn keyword glslxType sampler1DShadow
syn keyword glslxType sampler2D
syn keyword glslxType sampler2DArray
syn keyword glslxType sampler2DArrayShadow
syn keyword glslxType sampler2DMS
syn keyword glslxType sampler2DMSArray
syn keyword glslxType sampler2DRect
syn keyword glslxType sampler2DRectShadow
syn keyword glslxType sampler2DShadow
syn keyword glslxType sampler3D
syn keyword glslxType samplerBuffer
syn keyword glslxType samplerCube
syn keyword glslxType samplerCubeArray
syn keyword glslxType samplerCubeArrayShadow
syn keyword glslxType samplerCubeShadow
syn keyword glslxType uimage1D
syn keyword glslxType uimage1DArray
syn keyword glslxType uimage2D
syn keyword glslxType uimage2DArray
syn keyword glslxType uimage2DMS
syn keyword glslxType uimage2DMSArray
syn keyword glslxType uimage2DRect
syn keyword glslxType uimage3D
syn keyword glslxType uimageBuffer
syn keyword glslxType uimageCube
syn keyword glslxType uimageCubeArray
syn keyword glslxType uint
syn keyword glslxType usampler1D
syn keyword glslxType usampler1DArray
syn keyword glslxType usampler2D
syn keyword glslxType usampler2DArray
syn keyword glslxType usampler2DMS
syn keyword glslxType usampler2DMSArray
syn keyword glslxType usampler2DRect
syn keyword glslxType usampler3D
syn keyword glslxType usamplerBuffer
syn keyword glslxType usamplerCube
syn keyword glslxType usamplerCubeArray
syn keyword glslxType uvec2
syn keyword glslxType uvec3
syn keyword glslxType uvec4
syn keyword glslxType vec2
syn keyword glslxType vec3
syn keyword glslxType vec4
syn keyword glslxType void

" Qualifiers
syn keyword glslxQualifier align
syn keyword glslxQualifier attribute
syn keyword glslxQualifier binding
syn keyword glslxQualifier buffer
syn keyword glslxQualifier ccw
syn keyword glslxQualifier centroid
syn keyword glslxQualifier centroid varying
syn keyword glslxQualifier coherent
syn keyword glslxQualifier column_major
syn keyword glslxQualifier const
syn keyword glslxQualifier cw
syn keyword glslxQualifier depth_any
syn keyword glslxQualifier depth_greater
syn keyword glslxQualifier depth_less
syn keyword glslxQualifier depth_unchanged
syn keyword glslxQualifier early_fragment_tests
syn keyword glslxQualifier equal_spacing
syn keyword glslxQualifier flat
syn keyword glslxQualifier fractional_even_spacing
syn keyword glslxQualifier fractional_odd_spacing
syn keyword glslxQualifier highp
syn keyword glslxQualifier in
syn keyword glslxQualifier index
syn keyword glslxQualifier inout
syn keyword glslxQualifier invariant
syn keyword glslxQualifier invocations
syn keyword glslxQualifier isolines
syn keyword glslxQualifier layout
syn keyword glslxQualifier line_strip
syn keyword glslxQualifier lines
syn keyword glslxQualifier lines_adjacency
syn keyword glslxQualifier local_size_x
syn keyword glslxQualifier local_size_y
syn keyword glslxQualifier local_size_z
syn keyword glslxQualifier location
syn keyword glslxQualifier lowp
syn keyword glslxQualifier max_vertices
syn keyword glslxQualifier mediump
syn keyword glslxQualifier noperspective
syn keyword glslxQualifier offset
syn keyword glslxQualifier origin_upper_left
syn keyword glslxQualifier out
syn keyword glslxQualifier packed
syn keyword glslxQualifier patch
syn keyword glslxQualifier pixel_center_integer
syn keyword glslxQualifier point_mode
syn keyword glslxQualifier points
syn keyword glslxQualifier precise
syn keyword glslxQualifier precision
syn keyword glslxQualifier quads
syn keyword glslxQualifier r11f_g11f_b10f
syn keyword glslxQualifier r16
syn keyword glslxQualifier r16_snorm
syn keyword glslxQualifier r16f
syn keyword glslxQualifier r16i
syn keyword glslxQualifier r16ui
syn keyword glslxQualifier r32f
syn keyword glslxQualifier r32i
syn keyword glslxQualifier r32ui
syn keyword glslxQualifier r8
syn keyword glslxQualifier r8_snorm
syn keyword glslxQualifier r8i
syn keyword glslxQualifier r8ui
syn keyword glslxQualifier readonly
syn keyword glslxQualifier restrict
syn keyword glslxQualifier rg16
syn keyword glslxQualifier rg16_snorm
syn keyword glslxQualifier rg16f
syn keyword glslxQualifier rg16i
syn keyword glslxQualifier rg16ui
syn keyword glslxQualifier rg32f
syn keyword glslxQualifier rg32i
syn keyword glslxQualifier rg32ui
syn keyword glslxQualifier rg8
syn keyword glslxQualifier rg8_snorm
syn keyword glslxQualifier rg8i
syn keyword glslxQualifier rg8ui
syn keyword glslxQualifier rgb10_a2
syn keyword glslxQualifier rgb10_a2ui
syn keyword glslxQualifier rgba16
syn keyword glslxQualifier rgba16_snorm
syn keyword glslxQualifier rgba16f
syn keyword glslxQualifier rgba16i
syn keyword glslxQualifier rgba16ui
syn keyword glslxQualifier rgba32f
syn keyword glslxQualifier rgba32i
syn keyword glslxQualifier rgba32ui
syn keyword glslxQualifier rgba8
syn keyword glslxQualifier rgba8_snorm
syn keyword glslxQualifier rgba8i
syn keyword glslxQualifier rgba8ui
syn keyword glslxQualifier row_major
syn keyword glslxQualifier sample
syn keyword glslxQualifier shared
syn keyword glslxQualifier smooth
syn keyword glslxQualifier std140
syn keyword glslxQualifier std430
syn keyword glslxQualifier stream
syn keyword glslxQualifier triangle_strip
syn keyword glslxQualifier triangles
syn keyword glslxQualifier triangles_adjacency
syn keyword glslxQualifier uniform
syn keyword glslxQualifier varying
syn keyword glslxQualifier vertices
syn keyword glslxQualifier volatile
syn keyword glslxQualifier writeonly
syn keyword glslxQualifier xfb_buffer
syn keyword glslxQualifier xfb_stride
syn keyword glslxQualifier xfb_offset

" Built-in Constants
syn keyword glslxBuiltinConstant gl_CullDistance
syn keyword glslxBuiltinConstant gl_MaxAtomicCounterBindings
syn keyword glslxBuiltinConstant gl_MaxAtomicCounterBufferSize
syn keyword glslxBuiltinConstant gl_MaxClipDistances
syn keyword glslxBuiltinConstant gl_MaxClipPlanes
syn keyword glslxBuiltinConstant gl_MaxCombinedAtomicCounterBuffers
syn keyword glslxBuiltinConstant gl_MaxCombinedAtomicCounters
syn keyword glslxBuiltinConstant gl_MaxCombinedClipAndCullDistances
syn keyword glslxBuiltinConstant gl_MaxCombinedImageUniforms
syn keyword glslxBuiltinConstant gl_MaxCombinedImageUnitsAndFragmentOutputs
syn keyword glslxBuiltinConstant gl_MaxCombinedShaderOutputResources
syn keyword glslxBuiltinConstant gl_MaxCombinedTextureImageUnits
syn keyword glslxBuiltinConstant gl_MaxComputeAtomicCounterBuffers
syn keyword glslxBuiltinConstant gl_MaxComputeAtomicCounters
syn keyword glslxBuiltinConstant gl_MaxComputeImageUniforms
syn keyword glslxBuiltinConstant gl_MaxComputeTextureImageUnits
syn keyword glslxBuiltinConstant gl_MaxComputeUniformComponents
syn keyword glslxBuiltinConstant gl_MaxComputeWorkGroupCount
syn keyword glslxBuiltinConstant gl_MaxComputeWorkGroupSize
syn keyword glslxBuiltinConstant gl_MaxCullDistances
syn keyword glslxBuiltinConstant gl_MaxDrawBuffers
syn keyword glslxBuiltinConstant gl_MaxFragmentAtomicCounterBuffers
syn keyword glslxBuiltinConstant gl_MaxFragmentAtomicCounters
syn keyword glslxBuiltinConstant gl_MaxFragmentImageUniforms
syn keyword glslxBuiltinConstant gl_MaxFragmentInputComponents
syn keyword glslxBuiltinConstant gl_MaxFragmentInputVectors
syn keyword glslxBuiltinConstant gl_MaxFragmentUniformComponents
syn keyword glslxBuiltinConstant gl_MaxFragmentUniformVectors
syn keyword glslxBuiltinConstant gl_MaxGeometryAtomicCounterBuffers
syn keyword glslxBuiltinConstant gl_MaxGeometryAtomicCounters
syn keyword glslxBuiltinConstant gl_MaxGeometryImageUniforms
syn keyword glslxBuiltinConstant gl_MaxGeometryInputComponents
syn keyword glslxBuiltinConstant gl_MaxGeometryOutputComponents
syn keyword glslxBuiltinConstant gl_MaxGeometryOutputVertices
syn keyword glslxBuiltinConstant gl_MaxGeometryTextureImageUnits
syn keyword glslxBuiltinConstant gl_MaxGeometryTotalOutputComponents
syn keyword glslxBuiltinConstant gl_MaxGeometryUniformComponents
syn keyword glslxBuiltinConstant gl_MaxGeometryVaryingComponents
syn keyword glslxBuiltinConstant gl_MaxImageSamples
syn keyword glslxBuiltinConstant gl_MaxImageUnits
syn keyword glslxBuiltinConstant gl_MaxLights
syn keyword glslxBuiltinConstant gl_MaxPatchVertices
syn keyword glslxBuiltinConstant gl_MaxProgramTexelOffset
syn keyword glslxBuiltinConstant gl_MaxSamples
syn keyword glslxBuiltinConstant gl_MaxTessControlAtomicCounterBuffers
syn keyword glslxBuiltinConstant gl_MaxTessControlAtomicCounters
syn keyword glslxBuiltinConstant gl_MaxTessControlImageUniforms
syn keyword glslxBuiltinConstant gl_MaxTessControlInputComponents
syn keyword glslxBuiltinConstant gl_MaxTessControlOutputComponents
syn keyword glslxBuiltinConstant gl_MaxTessControlTextureImageUnits
syn keyword glslxBuiltinConstant gl_MaxTessControlTotalOutputComponents
syn keyword glslxBuiltinConstant gl_MaxTessControlUniformComponents
syn keyword glslxBuiltinConstant gl_MaxTessEvaluationAtomicCounterBuffers
syn keyword glslxBuiltinConstant gl_MaxTessEvaluationAtomicCounters
syn keyword glslxBuiltinConstant gl_MaxTessEvaluationImageUniforms
syn keyword glslxBuiltinConstant gl_MaxTessEvaluationInputComponents
syn keyword glslxBuiltinConstant gl_MaxTessEvaluationOutputComponents
syn keyword glslxBuiltinConstant gl_MaxTessEvaluationTextureImageUnits
syn keyword glslxBuiltinConstant gl_MaxTessEvaluationUniformComponents
syn keyword glslxBuiltinConstant gl_MaxTessGenLevel
syn keyword glslxBuiltinConstant gl_MaxTessPatchComponents
syn keyword glslxBuiltinConstant gl_MaxTextureCoords
syn keyword glslxBuiltinConstant gl_MaxTextureImageUnits
syn keyword glslxBuiltinConstant gl_MaxTextureUnits
syn keyword glslxBuiltinConstant gl_MaxTransformFeedbackBuffers
syn keyword glslxBuiltinConstant gl_MaxTransformFeedbackInterleavedComponents
syn keyword glslxBuiltinConstant gl_MaxVaryingComponents
syn keyword glslxBuiltinConstant gl_MaxVaryingFloats
syn keyword glslxBuiltinConstant gl_MaxVaryingVectors
syn keyword glslxBuiltinConstant gl_MaxVertexAtomicCounterBuffers
syn keyword glslxBuiltinConstant gl_MaxVertexAtomicCounters
syn keyword glslxBuiltinConstant gl_MaxVertexAttribs
syn keyword glslxBuiltinConstant gl_MaxVertexImageUniforms
syn keyword glslxBuiltinConstant gl_MaxVertexOutputComponents
syn keyword glslxBuiltinConstant gl_MaxVertexOutputVectors
syn keyword glslxBuiltinConstant gl_MaxVertexTextureImageUnits
syn keyword glslxBuiltinConstant gl_MaxVertexUniformComponents
syn keyword glslxBuiltinConstant gl_MaxVertexUniformVectors
syn keyword glslxBuiltinConstant gl_MaxViewports
syn keyword glslxBuiltinConstant gl_MinProgramTexelOffset

" Built-in Variables
syn keyword glslxBuiltinVariable gl_BackColor
syn keyword glslxBuiltinVariable gl_BackLightModelProduct
syn keyword glslxBuiltinVariable gl_BackLightProduct
syn keyword glslxBuiltinVariable gl_BackLightProduct
syn keyword glslxBuiltinVariable gl_BackMaterial
syn keyword glslxBuiltinVariable gl_BackSecondaryColor
syn keyword glslxBuiltinVariable gl_ClipDistance
syn keyword glslxBuiltinVariable gl_ClipPlane
syn keyword glslxBuiltinVariable gl_ClipVertex
syn keyword glslxBuiltinVariable gl_Color
syn keyword glslxBuiltinVariable gl_DepthRange
syn keyword glslxBuiltinVariable gl_EyePlaneQ
syn keyword glslxBuiltinVariable gl_EyePlaneR
syn keyword glslxBuiltinVariable gl_EyePlaneS
syn keyword glslxBuiltinVariable gl_EyePlaneT
syn keyword glslxBuiltinVariable gl_Fog
syn keyword glslxBuiltinVariable gl_FogCoord
syn keyword glslxBuiltinVariable gl_FogFragCoord
syn keyword glslxBuiltinVariable gl_FragColor
syn keyword glslxBuiltinVariable gl_FragCoord
syn keyword glslxBuiltinVariable gl_FragData
syn keyword glslxBuiltinVariable gl_FragDepth
syn keyword glslxBuiltinVariable gl_FrontColor
syn keyword glslxBuiltinVariable gl_FrontFacing
syn keyword glslxBuiltinVariable gl_FrontLightModelProduct
syn keyword glslxBuiltinVariable gl_FrontLightProduct
syn keyword glslxBuiltinVariable gl_FrontMaterial
syn keyword glslxBuiltinVariable gl_FrontSecondaryColor
syn keyword glslxBuiltinVariable gl_GlobalInvocationID
syn keyword glslxBuiltinVariable gl_HelperInvocation
syn keyword glslxBuiltinVariable gl_InstanceID
syn keyword glslxBuiltinVariable gl_InvocationID
syn keyword glslxBuiltinVariable gl_Layer
syn keyword glslxBuiltinVariable gl_LightModel
syn keyword glslxBuiltinVariable gl_LightSource
syn keyword glslxBuiltinVariable gl_LocalInvocationID
syn keyword glslxBuiltinVariable gl_LocalInvocationIndex
syn keyword glslxBuiltinVariable gl_ModelViewMatrix
syn keyword glslxBuiltinVariable gl_ModelViewMatrixInverse
syn keyword glslxBuiltinVariable gl_ModelViewMatrixInverseTranspose
syn keyword glslxBuiltinVariable gl_ModelViewMatrixTranspose
syn keyword glslxBuiltinVariable gl_ModelViewProjectionMatrix
syn keyword glslxBuiltinVariable gl_ModelViewProjectionMatrixInverse
syn keyword glslxBuiltinVariable gl_ModelViewProjectionMatrixInverseTranspose
syn keyword glslxBuiltinVariable gl_ModelViewProjectionMatrixTranspose
syn keyword glslxBuiltinVariable gl_MultiTexCoord0
syn keyword glslxBuiltinVariable gl_MultiTexCoord1
syn keyword glslxBuiltinVariable gl_MultiTexCoord2
syn keyword glslxBuiltinVariable gl_MultiTexCoord3
syn keyword glslxBuiltinVariable gl_MultiTexCoord4
syn keyword glslxBuiltinVariable gl_MultiTexCoord5
syn keyword glslxBuiltinVariable gl_MultiTexCoord6
syn keyword glslxBuiltinVariable gl_MultiTexCoord7
syn keyword glslxBuiltinVariable gl_Normal
syn keyword glslxBuiltinVariable gl_NormalMatrix
syn keyword glslxBuiltinVariable gl_NormalScale
syn keyword glslxBuiltinVariable gl_NumSamples
syn keyword glslxBuiltinVariable gl_NumWorkGroups
syn keyword glslxBuiltinVariable gl_ObjectPlaneQ
syn keyword glslxBuiltinVariable gl_ObjectPlaneR
syn keyword glslxBuiltinVariable gl_ObjectPlaneS
syn keyword glslxBuiltinVariable gl_ObjectPlaneT
syn keyword glslxBuiltinVariable gl_PatchVerticesIn
syn keyword glslxBuiltinVariable gl_Point
syn keyword glslxBuiltinVariable gl_PointCoord
syn keyword glslxBuiltinVariable gl_PointSize
syn keyword glslxBuiltinVariable gl_Position
syn keyword glslxBuiltinVariable gl_PrimitiveID
syn keyword glslxBuiltinVariable gl_PrimitiveIDIn
syn keyword glslxBuiltinVariable gl_ProjectionMatrix
syn keyword glslxBuiltinVariable gl_ProjectionMatrixInverse
syn keyword glslxBuiltinVariable gl_ProjectionMatrixInverseTranspose
syn keyword glslxBuiltinVariable gl_ProjectionMatrixTranspose
syn keyword glslxBuiltinVariable gl_SampleID
syn keyword glslxBuiltinVariable gl_SampleMask
syn keyword glslxBuiltinVariable gl_SampleMaskIn
syn keyword glslxBuiltinVariable gl_SamplePosition
syn keyword glslxBuiltinVariable gl_SecondaryColor
syn keyword glslxBuiltinVariable gl_TessCoord
syn keyword glslxBuiltinVariable gl_TessLevelInner
syn keyword glslxBuiltinVariable gl_TessLevelOuter
syn keyword glslxBuiltinVariable gl_TexCoord
syn keyword glslxBuiltinVariable gl_TextureEnvColor
syn keyword glslxBuiltinVariable gl_TextureMatrix
syn keyword glslxBuiltinVariable gl_TextureMatrixInverse
syn keyword glslxBuiltinVariable gl_TextureMatrixInverseTranspose
syn keyword glslxBuiltinVariable gl_TextureMatrixTranspose
syn keyword glslxBuiltinVariable gl_Vertex
syn keyword glslxBuiltinVariable gl_VertexID
syn keyword glslxBuiltinVariable gl_ViewportIndex
syn keyword glslxBuiltinVariable gl_WorkGroupID
syn keyword glslxBuiltinVariable gl_WorkGroupSize
syn keyword glslxBuiltinVariable gl_in
syn keyword glslxBuiltinVariable gl_out

" Built-in Functions
syn keyword glslxBuiltinFunction EmitStreamVertex
syn keyword glslxBuiltinFunction EmitVertex
syn keyword glslxBuiltinFunction EndPrimitive
syn keyword glslxBuiltinFunction EndStreamPrimitive
syn keyword glslxBuiltinFunction abs
syn keyword glslxBuiltinFunction acos
syn keyword glslxBuiltinFunction acosh
syn keyword glslxBuiltinFunction all
syn keyword glslxBuiltinFunction any
syn keyword glslxBuiltinFunction asin
syn keyword glslxBuiltinFunction asinh
syn keyword glslxBuiltinFunction atan
syn keyword glslxBuiltinFunction atanh
syn keyword glslxBuiltinFunction atomicAdd
syn keyword glslxBuiltinFunction atomicAnd
syn keyword glslxBuiltinFunction atomicCompSwap
syn keyword glslxBuiltinFunction atomicCounter
syn keyword glslxBuiltinFunction atomicCounterDecrement
syn keyword glslxBuiltinFunction atomicCounterIncrement
syn keyword glslxBuiltinFunction atomicExchange
syn keyword glslxBuiltinFunction atomicMax
syn keyword glslxBuiltinFunction atomicMin
syn keyword glslxBuiltinFunction atomicOr
syn keyword glslxBuiltinFunction atomicXor
syn keyword glslxBuiltinFunction barrier
syn keyword glslxBuiltinFunction bitCount
syn keyword glslxBuiltinFunction bitfieldExtract
syn keyword glslxBuiltinFunction bitfieldInsert
syn keyword glslxBuiltinFunction bitfieldReverse
syn keyword glslxBuiltinFunction ceil
syn keyword glslxBuiltinFunction clamp
syn keyword glslxBuiltinFunction cos
syn keyword glslxBuiltinFunction cosh
syn keyword glslxBuiltinFunction cross
syn keyword glslxBuiltinFunction dFdx
syn keyword glslxBuiltinFunction dFdxCoarse
syn keyword glslxBuiltinFunction dFdxFine
syn keyword glslxBuiltinFunction dFdy
syn keyword glslxBuiltinFunction dFdyCoarse
syn keyword glslxBuiltinFunction dFdyFine
syn keyword glslxBuiltinFunction degrees
syn keyword glslxBuiltinFunction determinant
syn keyword glslxBuiltinFunction distance
syn keyword glslxBuiltinFunction dot
syn keyword glslxBuiltinFunction equal
syn keyword glslxBuiltinFunction exp
syn keyword glslxBuiltinFunction exp2
syn keyword glslxBuiltinFunction faceforward
syn keyword glslxBuiltinFunction findLSB
syn keyword glslxBuiltinFunction findMSB
syn keyword glslxBuiltinFunction floatBitsToInt
syn keyword glslxBuiltinFunction floatBitsToUint
syn keyword glslxBuiltinFunction floor
syn keyword glslxBuiltinFunction fma
syn keyword glslxBuiltinFunction fract
syn keyword glslxBuiltinFunction frexp
syn keyword glslxBuiltinFunction ftransform
syn keyword glslxBuiltinFunction fwidth
syn keyword glslxBuiltinFunction fwidthCoarse
syn keyword glslxBuiltinFunction fwidthFine
syn keyword glslxBuiltinFunction greaterThan
syn keyword glslxBuiltinFunction greaterThanEqual
syn keyword glslxBuiltinFunction groupMemoryBarrier
syn keyword glslxBuiltinFunction imageAtomicAdd
syn keyword glslxBuiltinFunction imageAtomicAnd
syn keyword glslxBuiltinFunction imageAtomicCompSwap
syn keyword glslxBuiltinFunction imageAtomicExchange
syn keyword glslxBuiltinFunction imageAtomicMax
syn keyword glslxBuiltinFunction imageAtomicMin
syn keyword glslxBuiltinFunction imageAtomicOr
syn keyword glslxBuiltinFunction imageAtomicXor
syn keyword glslxBuiltinFunction imageLoad
syn keyword glslxBuiltinFunction imageSize
syn keyword glslxBuiltinFunction imageStore
syn keyword glslxBuiltinFunction imulExtended
syn keyword glslxBuiltinFunction intBitsToFloat
syn keyword glslxBuiltinFunction interpolateAtCentroid
syn keyword glslxBuiltinFunction interpolateAtOffset
syn keyword glslxBuiltinFunction interpolateAtSample
syn keyword glslxBuiltinFunction inverse
syn keyword glslxBuiltinFunction inversesqrt
syn keyword glslxBuiltinFunction isinf
syn keyword glslxBuiltinFunction isnan
syn keyword glslxBuiltinFunction ldexp
syn keyword glslxBuiltinFunction length
syn keyword glslxBuiltinFunction lessThan
syn keyword glslxBuiltinFunction lessThanEqual
syn keyword glslxBuiltinFunction log
syn keyword glslxBuiltinFunction log2
syn keyword glslxBuiltinFunction matrixCompMult
syn keyword glslxBuiltinFunction max
syn keyword glslxBuiltinFunction memoryBarrier
syn keyword glslxBuiltinFunction memoryBarrierAtomicCounter
syn keyword glslxBuiltinFunction memoryBarrierBuffer
syn keyword glslxBuiltinFunction memoryBarrierImage
syn keyword glslxBuiltinFunction memoryBarrierShared
syn keyword glslxBuiltinFunction min
syn keyword glslxBuiltinFunction mix
syn keyword glslxBuiltinFunction mod
syn keyword glslxBuiltinFunction modf
syn keyword glslxBuiltinFunction noise1
syn keyword glslxBuiltinFunction noise2
syn keyword glslxBuiltinFunction noise3
syn keyword glslxBuiltinFunction noise4
syn keyword glslxBuiltinFunction normalize
syn keyword glslxBuiltinFunction not
syn keyword glslxBuiltinFunction notEqual
syn keyword glslxBuiltinFunction outerProduct
syn keyword glslxBuiltinFunction packDouble2x32
syn keyword glslxBuiltinFunction packHalf2x16
syn keyword glslxBuiltinFunction packSnorm2x16
syn keyword glslxBuiltinFunction packSnorm4x8
syn keyword glslxBuiltinFunction packUnorm2x16
syn keyword glslxBuiltinFunction packUnorm4x8
syn keyword glslxBuiltinFunction pow
syn keyword glslxBuiltinFunction radians
syn keyword glslxBuiltinFunction reflect
syn keyword glslxBuiltinFunction refract
syn keyword glslxBuiltinFunction round
syn keyword glslxBuiltinFunction roundEven
syn keyword glslxBuiltinFunction shadow1D
syn keyword glslxBuiltinFunction shadow1DLod
syn keyword glslxBuiltinFunction shadow1DProj
syn keyword glslxBuiltinFunction shadow1DProjLod
syn keyword glslxBuiltinFunction shadow2D
syn keyword glslxBuiltinFunction shadow2DLod
syn keyword glslxBuiltinFunction shadow2DProj
syn keyword glslxBuiltinFunction shadow2DProjLod
syn keyword glslxBuiltinFunction sign
syn keyword glslxBuiltinFunction sin
syn keyword glslxBuiltinFunction sinh
syn keyword glslxBuiltinFunction smoothstep
syn keyword glslxBuiltinFunction sqrt
syn keyword glslxBuiltinFunction step
syn keyword glslxBuiltinFunction tan
syn keyword glslxBuiltinFunction tanh
syn keyword glslxBuiltinFunction texelFetch
syn keyword glslxBuiltinFunction texelFetchOffset
syn keyword glslxBuiltinFunction texture
syn keyword glslxBuiltinFunction texture1D
syn keyword glslxBuiltinFunction texture1DLod
syn keyword glslxBuiltinFunction texture1DProj
syn keyword glslxBuiltinFunction texture1DProjLod
syn keyword glslxBuiltinFunction texture2D
syn keyword glslxBuiltinFunction texture2DLod
syn keyword glslxBuiltinFunction texture2DProj
syn keyword glslxBuiltinFunction texture2DProjLod
syn keyword glslxBuiltinFunction texture3D
syn keyword glslxBuiltinFunction texture3DLod
syn keyword glslxBuiltinFunction texture3DProj
syn keyword glslxBuiltinFunction texture3DProjLod
syn keyword glslxBuiltinFunction textureCube
syn keyword glslxBuiltinFunction textureCubeLod
syn keyword glslxBuiltinFunction textureGather
syn keyword glslxBuiltinFunction textureGatherOffset
syn keyword glslxBuiltinFunction textureGatherOffsets
syn keyword glslxBuiltinFunction textureGrad
syn keyword glslxBuiltinFunction textureGradOffset
syn keyword glslxBuiltinFunction textureLod
syn keyword glslxBuiltinFunction textureLodOffset
syn keyword glslxBuiltinFunction textureOffset
syn keyword glslxBuiltinFunction textureProj
syn keyword glslxBuiltinFunction textureProjGrad
syn keyword glslxBuiltinFunction textureProjGradOffset
syn keyword glslxBuiltinFunction textureProjLod
syn keyword glslxBuiltinFunction textureProjLodOffset
syn keyword glslxBuiltinFunction textureProjOffset
syn keyword glslxBuiltinFunction textureQueryLevels
syn keyword glslxBuiltinFunction textureQueryLod
syn keyword glslxBuiltinFunction textureSize
syn keyword glslxBuiltinFunction transpose
syn keyword glslxBuiltinFunction trunc
syn keyword glslxBuiltinFunction uaddCarry
syn keyword glslxBuiltinFunction uintBitsToFloat
syn keyword glslxBuiltinFunction umulExtended
syn keyword glslxBuiltinFunction unpackDouble2x32
syn keyword glslxBuiltinFunction unpackHalf2x16
syn keyword glslxBuiltinFunction unpackSnorm2x16
syn keyword glslxBuiltinFunction unpackSnorm4x8
syn keyword glslxBuiltinFunction unpackUnorm2x16
syn keyword glslxBuiltinFunction unpackUnorm4x8
syn keyword glslxBuiltinFunction usubBorrow

hi def link glslxConditional     Conditional
hi def link glslxRepeat          Repeat
hi def link glslxStatement       Statement
hi def link glslxTodo            Todo
hi def link glslxCommentL        glslxComment
hi def link glslxCommentStart    glslxComment
hi def link glslxComment         Comment
hi def link glslxPreCondit       PreCondit
hi def link glslxDefine          Define
hi def link glslxTokenConcat     glslxPreProc
hi def link glslxPredefinedMacro Macro
hi def link glslxPreProc         PreProc
hi def link glslxBoolean         Boolean
hi def link glslxDecimalInt      glslxInteger
hi def link glslxOctalInt        glslxInteger
hi def link glslxHexInt          glslxInteger
hi def link glslxInteger         Number
hi def link glslxFloat           Float
hi def link glslxIdentifierPrime glslxIdentifier
hi def link glslxIdentifier      Identifier
hi def link glslxStructure       Structure
hi def link glslxType            Type
hi def link glslxQualifier       StorageClass
hi def link glslxBuiltinConstant Constant
hi def link glslxBuiltinFunction Function
hi def link glslxBuiltinVariable Identifier
hi def link glslxSwizzle         Identifier

if !exists("b:current_syntax")
  let b:current_syntax = "glslx"
endif

" vim:set sts=2 sw=2 :
