#!/bin/bash
#root=~/documents/texMT/
root=/scratch/uni/ifmto/u300065/texMT/
file=THESIS

# ==================================
function texclean()
{
rm -f *.blg  *.dvi *.aux  *.bbl *.log *.out *.toc
}
# ==================================
function tex2pdf()
{
pdflatex --file-line-error-style $1.tex
}
# ==================================

cd $root

#texclean
tex2pdf $file
#bibtex $file
#tex2pdf $file
#tex2pdf $file
