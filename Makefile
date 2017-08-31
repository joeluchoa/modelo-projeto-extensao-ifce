NAME = projeto
TEX = $(NAME).tex
PDF = $(NAME).pdf

all: build show

build: $(TEX)
	pdflatex $(TEX)
	bibtex $(NAME)
	pdflatex $(TEX)

show: $(PDF)
	open $(PDF)

clean:
	rm -f *.snm *.nav *.aux *.bbl *.blg *.idx *.log *.tcp *.tps *.out *.toc

cleanall: clean
	rm -f $(PDF)
