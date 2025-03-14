size(5cm);
settings.outformat = "pdf";
defaultpen(fontsize(11pt));
pen thick = defaultpen + 1.1;

real PI = 3.14159265359;

draw(Label("$y$", .98, dir(180)), (0, -1.2)--(0, 1.2), Arrow(TeXHead));
draw(Label("$x$", .98, dir(-90)), (-1.2, 0)--(1.2, 0), Arrow(TeXHead));

pair r(real t) {
	return (cos(t) * cos(t) * cos(t), sin(t) * sin(t) * sin(t));
}

guide g;
for (real t = 0; t <= 2 * PI; t += 0.01) {
	g = g--r(t);
}
path p = g;

draw(p, thick);

