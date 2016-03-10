SOURCES := charter.md opm.md style.md roadmap.md \
	CCEG/directives.md LexEG/directives.md S&CEG/directives.md

all:	$(SOURCES:%.md=%.html)

# Disable support for auto-identifiers and explicitly allow header attributes.
# We don't generate identifiers from headers because we want the identifiers
# to be stable to allow references from other documents, but we want to allow
# the header text to be changed.  Plus the auto-identifiers end up too verbose.
# Definition lists are useful too.
MD_DIALECT=markdown+definition_lists+header_attributes-auto_identifiers

%.html:	%.md
	pandoc -f $(MD_DIALECT) -o "$@" "$^"

clean:
	rm -f $(SOURCES:%.md="%.html")
