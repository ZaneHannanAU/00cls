# TEXMF = $(kpsewhich -var-value "TEXMFLOCAL")
TEXMF ?= /usr/share/texlive/texmf-local

install:
	echo "Putting in $(TEXMF)"
	cp -r -f ./ "$(TEXMF)/tex/latex/"
	chown -R zane "$(TEXMF)/tex/latex/"
	texhash
