inputFile=document.tex
outFile=document.pdf
outDir=build

entry:
	latexmk \
		-interaction=nonstopmode -f \
		-pdfxe \
		-quiet \
		-outdir=$(outDir) \
		$(inputFile)

clean:
	cd $(outDir) && latexmk -c $(outFile)