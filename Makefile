CV = KartikMistry-CV
CV_MD = KartikMistry-CV.md
CV_PDF = KartikMistry-CV.pdf
VI = vim

edit:
	@$(VI) $(CV_TXT)

pdf:
	pandoc $(CV_MD) -o $(CV).pdf

html:
	pandoc $(CV_MD) -o $(CV).html

latex:
	pandoc $(CV_MD) -o $(CV).latex

view:
	zathura $(CV_PDF)

clean:
	rm -f *.log

