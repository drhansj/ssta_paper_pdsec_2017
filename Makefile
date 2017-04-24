###############################################################################
# Copyright (c) 2016-7 Bryce Adelstein Lelbach aka wash <brycelelbach@gmail.com>
#
# Distributed under the Boost Software License, Version 1.0. (See accompanying
# file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
###############################################################################

PAPER  = ssta
PDFTEX = pdflatex

pdf:
	-$(PDFTEX) --interaction=batchmode $(PAPER)
	bibtex $(PAPER)
	-$(PDFTEX) --interaction=batchmode $(PAPER)
	$(PDFTEX) $(PAPER)
	gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -dEmbedAllFonts=true -dNOPLATFONTS -sOutputFile=$(PAPER).embed.pdf -f $(PAPER).pdf
	/bin/rm -f $(PAPER).pdf
	mv $(PAPER).embed.pdf $(PAPER).pdf

clean:
	/bin/rm -f *.dvi *.log *.aux *.toc *.bbl *.blg *.out *.upa *.upb *.lox *.tdo
	/bin/rm -f $(PAPER).pdf
