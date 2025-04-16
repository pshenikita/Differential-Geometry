size(5cm);
settings.outformat = "pdf";
defaultpen(fontsize(11pt));
pen thick = defaultpen + 1.1;

import markers;

real PI = 3.14159265359;

pair e_1 = (cos(-3*PI / 4), sin(-3*PI / 4));
pair e_2 = (1, 0);
pair n = (0, 1);
pair w = (cos(-PI / 6), sin(-PI / 6));
draw(L=Label("{\boldmath$\xi$}$_1$", 1), (0, 0)--e_1, Arrow(TeXHead, 1.5));
draw(L=Label("{\boldmath$\xi$}$_2$", 1), (0, 0)--e_2, Arrow(TeXHead, 1.5));
draw(L=Label("{\boldmath$n$}", 1), (0, 0)--n, Arrow(TeXHead, 1.5));
draw(L=Label("{\boldmath$\xi$}", 1), (0, 0)--w, thick, Arrow(TeXHead, 1.5));
markangle(Label("$\varphi$", Relative(.45)), radius = 10, e_1, (0, 0), w);
draw(n--(n + w)--w);

