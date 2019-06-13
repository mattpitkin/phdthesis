# make file to automate all the annoying commands
# I'm sure it will expand to do many amazing things as I procrastinate in writing this thesis

default: thesis

thesis:
	rm -f thesis.aux thesis.bbl
	latex thesis
	bibtex thesis
	latex thesis
	latex thesis
	dvips thesis.dvi
	
thesisplan:
	rm -f thesisplan.aux
	pdflatex thesisplan.tex
	pdflatex thesisplan.tex

pdfthesis:
	rm -f thesis.aux thesis.bbl
	@echo "Convert .eps files to pdf using epstopdf"
	convertfigs
	pdflatex thesis
	bibtex thesis
	pdflatex thesis
	pdflatex thesis
	
clean:
	@echo "Cleaning directory of backups and logs"
	rm -f *~ *.log *.aux *.dvi *.lot *.lof *.toc *.out *.blg
	
count:
	@echo " "
	@wc -w chapter1.tex chapter2.tex chapter3.tex chapter4.tex chapter5.tex
	@echo " "
