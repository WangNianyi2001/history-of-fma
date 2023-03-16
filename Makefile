srcDir?=src
srcFileName?=main.tex
outDir?=build
system?=windows

build:
	system=$(system); \
	orgPath="$$(pwd)"; \
	mv $(outDir) $(srcDir); \
	cd $(srcDir); \
	echo "\\newcommand\\system{$(system)}" > system.tex; \
	mkdir $(outDir); \
	xelatex -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=$(outDir) $(srcFileName); \
	rm system.tex; \
	mv $(outDir) $$orgPath;

clean:
	rm -rf $(outDir);

.PHONY: build
