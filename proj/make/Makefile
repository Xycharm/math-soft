# Makefile for the step-3 tutorial program

# Set the name of the project and target
TARGET := step-3

# Declare all source files the target consists of
TARGET_SRC := $(TARGET).cc

# Usually, you will not need to modify anything beyond this point...

CXX := g++
CXXFLAGS := -std=c++17 -Wall -Wextra -pedantic
CXXFLAGS += -I/usr/lib/x86_64-linux-gnu/openmpi/include
CXXFLAGS += -I/usr/include/trilinos
CXXFLAGS += -I/usr/include/petsc
CXXFLAGS += -I/usr/include/boost
LIBS := -Llib -ldeal.ii
LIBS += -L/lib/x86_64-linux-gnu -ltrilinos_teuchoscomm
LIBS += -L/lib/x86_64-linux-gnu -ltrilinos_teuchoscore
LIBS += -L/lib/x86_64-linux-gnu -ltbb
LIBS += -L/lib/x86_64-linux-gnu -lmpi_cxx
LIBS += -L/lib/x86_64-linux-gnu -lmpi
.PHONY: all clean

all: $(TARGET) gpl pdf

$(TARGET): $(TARGET_SRC)
	$(CXX) $(CXXFLAGS) -o $@ $< $(LIBS)
	./step-3


gpl:
	@echo "Running shell script..."
	(echo "set terminal pdf"; \
	echo "set style data lines"; \
	echo "splot \"./solution.gpl\""; \
	echo "set output \"./solution.pdf\""; \
	echo "replot"; \
	echo "exit") | gnuplot

pdf:
	xelatex final.tex
clean:
	rm -f *.aux *.log *.pdf \
	*.toc *.snm *.nav *.out \
	*.thm *.bbl *.ps *.dvi *.blg *.gpl

.PHONY: all clean
