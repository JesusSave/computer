filename=computer

all:
	pdflatex ${filename}
	pdflatex ${filename}
	-rm -r  *.aux *.out *.lot *.lof *.toc *.log
read:
	evince ${filename}.pdf &
