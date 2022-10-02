NAME := or-cv

all: $(NAME).pdf

PHOTO=images/photo1.eps
#PHOTO=images/photo.jpg

$(NAME).pdf: $(NAME).tex $(PHOTO) Makefile
	@rubber -m xelatex -W all $(NAME).tex

clean:
	@rm -f $(NAME).aux $(NAME).log $(NAME).out

distclean: clean
	@rm -f $(NAME).pdf

.PHONY: clean distclean
