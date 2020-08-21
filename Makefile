all: pdf clean

pdf:
	pdflatex resume.tex

clean:
	rm resume.log resume.aux
