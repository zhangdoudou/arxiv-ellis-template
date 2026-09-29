# ELLIS Institute Finland arXiv Template

A single-column LaTeX preprint template for arXiv with the ELLIS Institute Finland
logo in the top-left corner of the first page, above a thin rule. Includes
NeurIPS-style Times typography, US-letter pages, numeric citations, and generic
section, equation, table, figure, and appendix examples.

[View the compiled example](output/pdf/main.pdf).

## Start a paper

1. Click **Use this template** on GitHub, or download the repository as a ZIP.
2. Edit the title, authors, affiliations, email addresses, and PDF metadata in
   `main.tex`. Uncomment and replace the optional resource links if needed.
3. Replace the example text in `main.tex` and the example entry in `references.bib`.
4. Build the PDF using the command below.

`main.tex` is the root document. Styling lives in `arxiv-ellis.sty`.
The logo is set by one line in the `firstpage` style of `arxiv-ellis.sty`:

```latex
\fancypagestyle{firstpage}{
  \lhead{
  \includegraphics[height=19pt]{assets/ellis-institute-finland-logo.png}}
  ...
}
```

Change the file or height there, or delete the `\includegraphics` line to omit the logo.

For author-year citations, remove the `\PassOptionsToPackage{numbers,...}{natbib}`
line in `main.tex`.

## Build locally

Install a TeX distribution such as TeX Live or MacTeX with `latexmk` and BibTeX.

```sh
make pdf
```

Or run the equivalent command directly:

```sh
latexmk -pdf -interaction=nonstopmode -file-line-error -synctex=1 -outdir=output/pdf main.tex
```

The output is `output/pdf/main.pdf`. `make clean` removes auxiliary files and
keeps the PDF. Rebuild and commit the example PDF after template changes.

## Overleaf and arXiv

For Overleaf, upload the repository ZIP, select `main.tex` as the main document,
and use pdfLaTeX.

For arXiv, include the source files, required assets, and the generated
`output/pdf/main.bbl` copied alongside `main.tex` as `main.bbl`.

This is a preprint style. For conference submissions, use the venue's required
template and anonymity rules; this template has no anonymous review mode.

## Provenance

The layout is adapted from the arXiv source of
[arXiv:2609.35457](https://arxiv.org/abs/2609.35457) (CC BY 4.0).
Paper-specific prose, author identities, figures, bibliography, and the original
logo have been removed. See [ATTRIBUTION.md](ATTRIBUTION.md) for the source and
changes, and [LICENSE](LICENSE) for reuse terms and the logo exception.
