srcDir?=src
srcFileName?=main.tex
outDir?=build
system?=windows

build:
	system=$(system); \
	orgPath="$$(pwd)"; \
	mkdir $(outDir); \
	cp -rf $(outDir) $(srcDir); \
	cd $(srcDir); \
	echo "\\newcommand\\system{$(system)}" > system.tex; \
	mkdir $(outDir); \
	xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=$(outDir) $(srcFileName); \
	rm system.tex; \
	mv -f $(outDir)/* $$orgPath/$(outDir); \
	rm -rf $(outDir);

clean:
	rm -rf $(outDir);

.PHONY: build
