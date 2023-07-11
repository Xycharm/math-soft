all: compile gpl pdf

compile:
	cd ./files && cmake . && make && ./step-3

gpl:./files/solution.gpl
	@echo "Running shell script..."
	(echo "set terminal pdf"; \
	echo "set style data lines"; \
	echo "splot \"./files/solution.gpl\""; \
	echo "set output \"./files/solution.pdf\""; \
	echo "replot"; \
	echo "exit") | gnuplot

pdf:
	cd ./files && xelatex final.tex
	cp ./files/final.pdf .
clean:
	cd ./files && rm -f *.aux *.log *.pdf \
	*.toc *.snm *.nav *.out \
	*.thm *.bbl *.ps *.dvi *.blg *.gpl

.PHONY: all clean
