SOURCES := charter.md opm.md style.md roadmap.md \
	CCEG/directives.md LexEG/directives.md S&CEG/directives.md

all:	$(SOURCES:%.md=%.html)

# Disable support for auto-identifiers and explicitly allow header attributes.
# We don't generate identifiers from headers because we want the identifiers
# to be stable to allow references from other documents, but we want to allow
# the header text to be changed.  Plus the auto-identifiers end up too verbose.
MD_DIALECT := markdown+definition_lists+header_attributes-auto_identifiers

# We also want definitions and YAML metadata blocks.
MD_DIALECT := $(MD_DIALECT)+definition_lists+yaml_metadata_block

%.html:	%.md
	pandoc -f $(MD_DIALECT) -o "$@" "$^"

PDF_OPTS=--variable=documentclass=book \
         --template=template.tex --latex-engine=xelatex

%.pdf: %.md template.tex logo.png
	pandoc $(PDF_OPTS) -f $(MD_DIALECT) -o "$@" "$<"

clean:
	rm -f $(SOURCES:%.md="%.html")

# We use this to avoid duplicating the markdown dialect between repositories
.dialect:
	@echo -n "$(MD_DIALECT)" > $@
