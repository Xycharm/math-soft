PROJ = lsq
SOURCE := src/$(PROJ).c
GENDATA := $(PROJ)_data
DATA = testdata.txt
IMAGE = output.eps
REF = references.bib

all:$(PROJ) $(GENDATA) $(DATA) $(PROJ).pdf

exe:$(PROJ)

doc:$(PROJ) $(PROJ).pdf

$(PROJ): src/$(PROJ).c
	gcc -o $@ $<


$(GENDATA): src/$(GENDATA).c
	gcc -o $@ $<

$(DATA): $(GENDATA)
	./$(GENDATA)
	./$(PROJ)

$(IMAGE): $(DATA)
	gnuplot doc/$(PROJ).gp

$(PROJ).pdf: doc/$(PROJ).tex $(IMAGE) doc/$(REF)
	xelatex $<
	bibtex  lsq.aux
	xelatex $<
	xelatex $<


clean:
	rm -rf *.aux *.bbl *.blg *.log *.out *.pdf *.toc\
	$(PROJ) $(GENDATA) $(DATA) $(IMAGE) \
	*.nav *.snm *.dat
	cd doc && rm -rf *.aux *.bbl *.blg *.log *.out *.pdf *.toc
	rm lsq

.PHONY: all clean
