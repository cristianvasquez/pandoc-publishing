# pandoc-publishing

This is an example to generate Latex-based PDFs and HTML from Markdown using Pandoc.

It uses docker.

usage:

Generate html:

```sh
docker run --rm -v `pwd`:/data jpbernius/pandoc --bibliography source/references.bib --csl ieee.csl -N -o paper.html --css paper.css --metadata link-citations --template=llncs source/paper.md
```

Generate tex:

```sh
docker run --rm -v `pwd`:/data jpbernius/pandoc --bibliography source/references.bib --csl ieee.csl -N -o paper.html --css paper.css --metadata link-citations --template=llncs source/paper.md
```

Build a pdf from tex:

```sh
docker run --name $(basename $PWD) --rm -v ${PWD}:/data thubo/latexmk -pdf paper.tex && latexmk -c
```
