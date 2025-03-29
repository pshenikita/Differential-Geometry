size(12cm);
settings.outformat = "pdf";
defaultpen(fontsize(11pt));
pen thick = defaultpen + 1.1;

pair r(real t) {
	return (t - sin(t), 1 - cos(t));
}

draw(shift(0, 1)*unitcircle);
draw((-1.5, 0)--(7.5, 0));

guide g;
for (real t = -2; t <= 8; t += 0.001)
	g = g--r(t);
path p = g;

dot("$0$", (0, 0), dir(S));

draw(p, dashed);

real t_0 = 4.;

guide g;
for (real t = 0; t <= t_0; t += 0.001)
	g = g--r(t);
p = g;

draw(p, thick);

dot(r(t_0));
label("$t$", (t_0, 0), dir(S));

dot("\scriptsize$(t, 1)$", (t_0, 1), dir(SE));

pair theta = dir(r(t_0) - (t_0, 1));

draw(Label("\scriptsize$-(\sin t, \cos t)$", Relative(.2), dir(NW), Rotate(theta)), (t_0, 1)--(r(t_0)), Arrow(TeXHead, 1.5));

draw(shift(t_0, 1)*unitcircle);

