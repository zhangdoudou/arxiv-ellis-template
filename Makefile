# Build the example and package an arXiv-ready tarball.
MAIN ?= main

pdf:
	latexmk -pdf -interaction=nonstopmode $(MAIN).tex

# arXiv needs the .bbl (it does not run bibtex reliably), the .sty and the logo.
arxiv: pdf
	rm -rf arxiv-upload arxiv-upload.tar.gz
	mkdir arxiv-upload
	cp $(MAIN).tex $(MAIN).bbl arxiv-ellis.sty ellis-institute-finland-logo.* arxiv-upload/
	tar -czf arxiv-upload.tar.gz -C arxiv-upload .
	@echo "Add your figures/ directory to arxiv-upload/ before uploading if you have one."

clean:
	latexmk -C $(MAIN).tex
	rm -rf arxiv-upload arxiv-upload.tar.gz

.PHONY: pdf arxiv clean
