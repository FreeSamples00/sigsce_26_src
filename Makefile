TARGET=main.tex
CLEAN_TARGETS=*.aux *.log *.out

build:
	pdflatex ${TARGET}

clean:
	rm -f ${CLEAN_TARGETS}
