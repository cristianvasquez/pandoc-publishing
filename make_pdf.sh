docker run --name $(basename $PWD) --rm -v ${PWD}:/data thubo/latexmk -pdf paper.tex && latexmk -c