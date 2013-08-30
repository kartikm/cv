CV = KartikMistry-CV
CV_MD = KartikMistry-CV.md
CV_PDF = KartikMistry-CV.pdf
VI = vim

release:
	./update-timestamp.sh
	make pdf
	make view

edit:
	@$(VI) $(CV_TXT)

pdf:
	cp $(CV).txt $(CV_MD)
	pandoc $(CV_MD) -o $(CV).pdf

html:
	pandoc $(CV_MD) -o $(CV).html

latex:
	pandoc $(CV_MD) -o $(CV).latex

view:
	zathura $(CV_PDF)

clean:
	rm -f *.log

