NAME = Differential-Geometry

all: $(NAME).pdf

$(NAME).pdf: main.tex literature.tex preamble.sty sections/* img/*
	latexmk -lualatex -jobname=$(NAME) main

clean:
	rm -f $(NAME)* lectures/*.aux

