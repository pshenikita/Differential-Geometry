size(10cm);
settings.outformat = "pdf";
defaultpen(fontsize(11pt));
pen thick = defaultpen + 1.1;

pair r(real t) {
	return (t - sin(t), 1 - cos(t));
}

draw(shift(0, 1)*unitcircle);
draw((-7.5, 0)--(7.5, 0));

guide g;
for (real t = -8; t <= 8; t += 0.001)
	g = g--r(t);
path p = g;

dot((0, 0));

draw(p, dashed);

real t_0 = 4.;

guide g;
for (real t = 0; t <= t_0; t += 0.001)
	g = g--r(t);
p = g;

draw(p, thick);

dot(r(t_0));

draw(shift(t_0, 1)*unitcircle);

