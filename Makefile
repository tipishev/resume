all: pdf clean

pdf:
	xelatex résumé.tex

clean:
	rm -f résumé.{log,aux,out}
