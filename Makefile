# Autor: Martin Hruska
# E-mail: xhrusk16@stud.fit.vutbr.cz
# Projekt: DP

PROJ=2015-ExcelFIT-ShortName
TEX_COMP=pdflatex # prekladac latexu
BIB=bibtex
#DVI=dvips # prevod do post scriptu
#PDF=ps2pdf #prevod do pdf
#$A4=-sPAPERSIZE=a4
VLNA=vlna
VLNA_OPTS=-l -m -n

all:
	$(VLNA) $(VLNA_OPTS) $(PROJ).tex 
	$(TEX_COMP) $(PROJ).tex
	$(BIB) $(PROJ)
	$(TEX_COMP) $(PROJ).tex
	$(TEX_COMP) $(PROJ).tex

clean:
	rm *.pdf *.aux *.blg *.log *.dvi *.ps *.bbl
