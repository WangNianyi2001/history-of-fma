inputFile=main.tex
outFile=main.pdf
outDir=build

entry:
	latexmk \
		-interaction=nonstopmode -f \
		-pdfxe\
		-outdir=$(outDir) \
		$(inputFile)

clean:
	cd $(outDir) && latexmk -c $(outFile)