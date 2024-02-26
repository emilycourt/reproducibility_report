RESULTS := results/results_table.tex results/replication_figure.png

report: report.pdf

report.pdf: $(RESULTS) report.tex
	-latexmk -pdf report.tex

purge:
	-latexmk -c
	-rm -f *.bbl

clean: purge
	-rm -f report.pdf

.PHONY: report purge clean
