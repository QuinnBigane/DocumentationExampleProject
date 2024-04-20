# Makefile for Sphinx Documentation

SPHINXOPTS		?=
SPHINXBUILD 	?= sphinx-build
SOURCEDIR		= source
BUILDDIR		= build

# default to make help
help:
		@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile


%: Makefile
		@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)