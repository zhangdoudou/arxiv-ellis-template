.PHONY: pdf clean

pdf:
	latexmk -pdf -interaction=nonstopmode -file-line-error -synctex=1 -outdir=output/pdf main.tex

clean:
	latexmk -c -outdir=output/pdf main.tex
