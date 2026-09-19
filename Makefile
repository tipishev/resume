all: pdf

pdf:
	typst compile resume.typ resume.pdf
