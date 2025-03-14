size(5cm);
settings.outformat = "pdf";
defaultpen(fontsize(11pt));
pen thick = defaultpen + 1.1;

draw(Label("$y$", .98, dir(180)), (0, -1.5)--(0, 1.5), Arrow(TeXHead));
draw(Label("$x$", .98, dir(-90)), (-.5, 0)--(1.5, 0), Arrow(TeXHead));

pair r(real t) {
	return (t * t, t * t * t);
}

guide g;
for (real t = -1.1; t <= 1.1; t += 0.01) {
	g = g--r(t);
}
path p = g;

draw(p, thick);

