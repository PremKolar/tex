#!/bin/bash
# ==================================
function texclean()
{
rm -f *.blg  *.dvi *.aux  *.bbl *.log *.out *.toc
}
# ==================================
function plx()
{
pdflatex --file-line-error-style $1.tex
sleep 1
}
# ==================================
function blx()
{
bibtex $1
sleep 1
}

texclean
	plx $1
	blx $1
	blx $1
	plx $1
	plx $1	
