# target
TARGET = Calculus_On_Manifolds

# source
SRC_CHAPTER = chapter
TEX_SOURCE_FILES = $(shell find $(SRC_CHAPTER) -name '*.tex') \
				$(TARGET).tex \
				ManifoldsBook.sty

# build
$(TARGET).pdf: $(TEX_SOURCE_FILES)
	pdflatex --shell-escape $(TARGET).tex
	biber $(TARGET)
	makeindex -s $(TARGET).ist $(TARGET).idx
	pdflatex $(TARGET).tex
	pdflatex $(TARGET).tex				

temp:
	pdflatex --shell-escape $(TARGET).tex

clean:
	latexmk -c
	rm -f *.bbl-SAVE-ERROR

Clean:
	latexmk -C
	rm -f *.bbl *.gz