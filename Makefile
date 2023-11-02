all: pdf clean

pdf:
	xelatex resume.tex
	mv {resume,résumé}.pdf  # so français!

clean:
	rm -f resume.{log,aux,out}
