// Baisc Output Settings
// 1. vector output format, default reader=-1
settings.render = 0;
settings.outformat = "pdf";
// 2. if interactive in adobe acrobat
settings.prc = false;

import graph3;
// texpreamble("\usepackage[lite,subscriptcorrection,slantedGreek,nofontinfo]{mtpro2}");
size(200,200,IgnoreAspect);
currentprojection=perspective(2,4,1);
real f(pair z) {
	return z.x^2 - z.y^2;
}
draw(
	surface(f,(-2,-2),(2,2),nx=10,Spline),
	gray,
	render(merge=true)
);
draw(Label("$x$",1),(-6,0,0)--(6,0,0),black,Arrow3);
draw(Label("$y$",1),(0,-6,0)--(0,6,0),black,Arrow3);
draw(Label("$z$",1),(0,0,-6)--(0,0,6),black,Arrow3);
