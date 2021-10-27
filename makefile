TARGET = 000_rust
DEPS = 001_abstract.tex \
	010_introduction.tex \
	015_rust.tex \
	020_types.tex \
	030_termination.tex \
	040_invariant.tex \
	090_conclusion.tex \
	biblio.bib

all:$(TARGET).pdf

%.pdf : %.tex $(DEPS)
	@for X in 1 2 3 ; do \
        ( echo "---------------- Latex ($$X) ----------------" && pdflatex $<  $< && bibtex $*) \
	done

clean:
	rm *.bbl *.aux *.dvi *.log $(TARGET).pdf *~ *.blg *.bak

