# Author: c275633094@gmail.com
# Date: 05-04-2018
# MusiXTeX musixdoc tutorial example makefile
## First, set the main filename = YOUR_TEX_FILE_NAME_WITHOUT_.TEX
# $ make, to run commands in this file
# $ make read, to read the pdf file
# $ make clean, to clean the inter file

filename=computer

all:
	xelatex ${filename}
	#musixflx ${filename}
	#bibtex ${filename}||true
	#pdflatex ${filename}
	#pdflatex ${filename}
	#makeindex ${filename}
	#latex ${filename}
	#latex ${filename}
	#dvips -e0 ${filename}
	#ps2pdf ${filename}.ps

read:
	evince ${filename}.pdf &

oread:
	okular ${filename}.pdf

clean:
	-rm -f *.aux
	-rm -f *.ps
	-rm -f *.dvi
	-rm -f *.idx
	-rm -f *.ilg
	-rm -f *.ind
	-rm -f *.mx1
	-rm -f *.mx2
	-rm -f *.log
	-rm -f *.toc
	-rm -f *.bbl
	-rm -f *.blg
	-rm -f *.out
	-rm -f make/bib
	-rm -f *.nav
	-rm -f *.snm
	-rm -f *.lot
	-rm -f *.lof

