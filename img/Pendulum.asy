size(12cm);
settings.outformat = "pdf";
defaultpen(fontsize(11pt));
pen thick = defaultpen + 1.1;

real PI = 3.14159265359;

pair r(real t) {
	return (t - sin(t), cos(t) - 1);
}

pair p(real t) {
	return (t + sin(t), -cos(t) - 3);
}

guide g;
for (real t = -2 * PI; t <= 2 * PI; t += 0.001)
	g = g--(r(t));
path p = g;
draw(p);

guide g;
for (real t = -PI; t <= PI; t += 0.001)
	g = g--(p(t));
path p = g;
draw(p, dashed);

real t_1 = -2, t_2 = 1;
dot(p(t_1));
dot(p(t_2));

guide g;
for (real t = t_1; t <= t_2; t += 0.001)
	g = g--(p(t));
path p = g;
draw(p);

// dot(r(t_1));
// dot(r(t_2));

draw(p(t_1)--r(t_1), thick);
draw(p(t_2)--r(t_2), thick);

guide g;
for (real t = t_1; t <= t_2; t += 0.001)
	g = g--(r(t));
path p = g;
draw(p, thick);

