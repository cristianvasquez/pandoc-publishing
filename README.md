# pandoc-publishing


This is an example on how to write documents using Markdown, and then transform them 
into Latex-based PDFs or HTML using Pandoc.

It uses docker.

The contents and references are in the [source](./source) folder

Usage:

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

This is based on this [example](https://github.com/studentkittens/lncs-pandoc)
