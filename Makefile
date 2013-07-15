CV_TXT = KartikMistry-CV.txt
CV_PDF = KartikMistry-CV.pdf
TXT2PDF = ~/.bin/txt2pdf/txt2pdf.pl
VI = vim

edit:
	@$(VI) $(CV_TXT)

pdf:
	@$(TXT2PDF)

view:
	zathura $(CV_PDF)
