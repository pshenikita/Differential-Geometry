size(6cm);
settings.outformat = "pdf";
defaultpen(fontsize(11pt));
pen thick = defaultpen + 1.1;

import markers;
import geometry;

real PI = 3.14159265359;

draw((0, -.2)--(0, 3.5), Arrow(TeXHead));
draw((-.2, 0)--(3.5, 0), Arrow(TeXHead));

real F(real x) {
	return sqrt(4 - (x - 1) * (x - 1));
}

real G(real x) {
	return sqrt(9 - x * x);
}

guide g;
for (real x = 3; x >= 0; x -= 0.01) {
	g = g--(x, F(x));
}
path pF = g;

draw(pF, thick);

guide g;
for (real x = 0; x <= 3; x += 0.01) {
	g = g--(x, G(x));
}
path pG = g;

draw(pG, thick);

draw((0, sqrt(3))--(0, 3), thick);

fill((0, sqrt(3))--pG--pF--cycle, lightgrey);

dot("$\sqrt{3}$", (0, F(0)), 1.5*dir(-180));
dot("$3$", (0, G(0)), 1.5*dir(-180));
dot("$3$", (3, F(3)), 1.5*dir(-90));

dot((1, 0));
draw((0, F(0))--(1, 0));
markangle(Label("$\frac{\pi}{3}$"), radius=20, (0, F(0)), (1, 0), (0, 0));
markangle(Label("$\frac{\pi}{3}$"), radius=10, (.4, F(.4)), (0, F(0)), (0, G(0)));
perpendicular((0, G(0)), SE, (1, 0), size=8);

