
template.pdf: navier-stokes.tex
	xelatex navier-stokes.tex
	bibtex navier-stokes.aux
	xelatex navier-stokes.tex
	xelatex navier-stokes.tex
clean:
	rm -f *.aux *.log *.pdf \
	*.toc *.snm *.nav *.out \
	*.thm *.bbl *.ps *.dvi *.blg

.PHONY: all clean
