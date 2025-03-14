size(6cm);
settings.outformat = "pdf";
defaultpen(fontsize(11pt));
pen thick = defaultpen + 1.1;

import markers;

real PI = 3.14159265359;

pair r(real t) {
	return (t, t * t * t - 2 * t * t + 1);
}

pair dot_r(real t) {
	real x = 1, y = 3 * t * t - 4 * t;
	return (x, y) / (3 * sqrt(x * x + y * y));
}

guide g;
for (real t = -.5; t <= .5; t += 0.01) {
	g = g--r(t);
}
path p = g;

real t_0 = -.25, t = .2;
pair x_0 = r(t_0), v_0 = dot_r(t_0), x_1 = r(t);
dot("{\boldmath$x$}$_0$", x_0, dir(135));
draw(Label("{\boldmath$v$}$_0$", .85, dir(135)), x_0--(x_0 + v_0), thick, Arrow(TeXHead, 2));
draw(Label("$\ell$", .9), (x_0 - 1.2 * v_0)--(x_0 + 1.5 * v_0));
dot("{\boldmath$r$}$(t)$", x_1, dir(45));
draw(x_0--x_1, thick, Arrow(TeXHead, 2));
markangle(Label("$\alpha(t)$", Relative(.45)), radius = 20, x_1, x_0, x_0 + v_0);

draw(p, thick);

