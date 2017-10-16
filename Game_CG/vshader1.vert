#version 410

 //(in)put variables processed in parallel
layout (location = 0) in vec4 vPosition;
layout (location = 1) in vec4 vColors;

 //(out)put variable interpolated at fragment shader raster
 out vec4 v2fcolor;

 uniform float scaling;
 uniform vec4 translation;

 void main()
 {
     //gl_Position->out builtin variable
     gl_Position = (vPosition * vec4(scaling, scaling, scaling, 1)) + translation;
     v2fcolor = vColors;
 }
