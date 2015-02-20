
all: show

show: killok
	okular THESIS.pdf &

killok: 
	killall okular

THESIS.pdf: THESIS.dvi
	dvipdf THESIS.dvi &

THESIS.dvi: THESIS.tex
	latex THESIS.tex &

