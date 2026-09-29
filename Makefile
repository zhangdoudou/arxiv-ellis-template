.PHONY: pdf arxiv clean

OUT := output/pdf

pdf:
	latexmk -pdf -interaction=nonstopmode -file-line-error -synctex=1 -outdir=$(OUT) main.tex

# arXiv upload bundle: sources, style, assets and the generated .bbl.
arxiv: pdf
	tar -czf arxiv-upload.tar.gz --exclude='assets/ELLIS' \
	  main.tex arxiv-ellis.sty references.bib assets -C $(OUT) main.bbl
	@echo "Wrote arxiv-upload.tar.gz"

clean:
	latexmk -c -outdir=$(OUT) main.tex
	rm -f arxiv-upload.tar.gz
