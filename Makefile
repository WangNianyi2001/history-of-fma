srcDir=src/
srcFile=document.typ

outDir=build/
outFile=document.pdf

build: $(outDir)$(outFile)

$(outDir)$(outFile): $(shell find $(srcDir) -name '*.typ' | sort)
	typst compile $(srcDir)$(srcFile) $(outDir)$(outFile);