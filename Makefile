NAME   = typed-checklist
SRC    = $(NAME).dtx
INS    = $(NAME).ins
PKG    = $(NAME).sty
DOC    = $(NAME).pdf
README = README.md
CTAN = $(SRC) $(INS) $(DOC) $(README)
ifeq (, $(shell which lualatex))
LTX    = pdflatex
else
LTX    = lualatex
endif

all: package docs
.PHONY: all package docs clean cleanall ctan

package: $(PKG)
docs:    $(DOC)

$(PKG): $(SRC) $(INS)
	latex $(INS)

$(DOC): $(SRC) $(PKG)
ifeq (, $(shell which latexmk))
	$(LTX) $(SRC)
	makeindex -s gind.ist -o $(NAME).ind $(NAME).idx
	makeindex -s gglo.ist -o $(NAME).gls $(NAME).glo
	$(LTX) $(SRC)
	$(LTX) $(SRC)
else
	latexmk $(SRC)
endif

ctan: $(CTAN)
	mkdir $(NAME)
	cp $(CTAN) $(NAME)/
	zip -r $(NAME)-$(shell date "+%Y-%m-%d").zip $(NAME)
	rm -rf $(NAME)

clean:
	rm -f $(NAME).{aux,glo,gls,hd,idx,ilg,ind,log,out,toc,tmp}

cleanall: clean
	rm -f $(NAME).{pdf,sty}
