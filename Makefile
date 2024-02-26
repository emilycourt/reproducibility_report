DOC	:= report.tex

report: $(DOC:.tex=.pdf)

%.pdf: %.tex
	-latexmk -pdf $(DOC)

purge:
	-rm -f *.aux
	-rm -f *.bbl
	-rm -f *.blg
	-rm -f *.fdb_latexmk
	-rm -f *.fls
	-rm -f *.log
	-rm -f *.out

clean: purge
	-rm -f $(DOC:.tex=.pdf)

.PHONY: report purge clean
