DOC  := report.tex

report: figures doc

figures:
# 	@$(MAKE) -C $@

doc: $(DOC:.tex=.pdf)

%.pdf: %.tex
	-latexmk -pdf $(DOC)

purge:
	-rm -f *.{aux,dvi,log,bbl,blg,brf,fls,toc,thm,out,fdb_latexmk}

clean: purge
# 	$(MAKE) -C figures $@
	-rm -f $(DOC:.tex=.pdf)

.PHONY: report figures purge clean