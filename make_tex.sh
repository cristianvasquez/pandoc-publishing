docker run --rm -v `pwd`:/data jpbernius/pandoc --biblio source/references.bib --csl ieee.csl -N -o paper.tex --template=llncs source/paper.md