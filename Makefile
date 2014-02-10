CV_MD = cv.md
CV_PDF = cv.pdf
CV_TXT = cv.txt
VI = vim

all: index.html pdf txt

release:
	./update-timestamp.sh
	make all
	make view

edit:
	@$(VI) $(CV_MD)

index.html: cv.md style.css
	pandoc --standalone -c style.css --from markdown --to html -o index.html $(CV_MD)

pdf: index.html
	pandoc --standalone -c style.css --from markdown --to latex -o cv.tex $(CV_MD)
	pdflatex cv.tex

txt: cv.md
	pandoc --standalone --smart --from markdown --to plain -o $(CV_TXT) $(CV_MD)

view:
	zathura $(CV_PDF)

clean:
	rm -f *.log *.html *.pdf *.txt
