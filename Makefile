all: pdf clean

pdf:
	xelatex resume.tex

clean:
	rm resume.log resume.aux
