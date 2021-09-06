CV_MD = cv.md
CV_MD_S = cv-short.md
CV_PDF = cv.pdf
CV_PDF_S = cv-short.pdf
CV_TXT = cv.txt
CV_TXT_S = cv_s.txt
VI = vim

all: index.html pdf txt

release:
	./scripts/update-timestamp.sh
	make all

edit:
	@$(VI) $(CV_MD) $(CV_MD_S)

index.html: cv.md cv-short.md style.css
	pandoc --standalone -c style.css --from markdown --to html -o index.html $(CV_MD)
	pandoc --standalone -c style.css --from markdown --to html -o index.html $(CV_MD_S)

pdf: index.html
	pandoc --standalone -c style.css --from markdown --to latex -o cv.tex $(CV_MD)
	pandoc --standalone -c style.css --from markdown --to latex -o cv_s.tex $(CV_MD_S)
	pdflatex cv.tex
	pdflatex cv_s.tex

txt: cv.md cv-short.md
	pandoc --standalone --smart --from markdown --to plain -o $(CV_TXT) $(CV_MD)
	pandoc --standalone --smart --from markdown --to plain -o $(CV_TXT_S) $(CV_MD_S)

view:
	zathura $(CV_PDF)

view_s:
	zathura $(CV_PDF_S)

clean:
	rm -f *.log *.out *.aux *.tex *.html
