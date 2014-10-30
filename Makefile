SOURCES := charter.md opm.md style.md \
	CCEG/directives.md LexEG/directives.md

all:	$(SOURCES:%.md=%.html)

# Disable support for auto-identifiers and explicitly allow header attributes.
# We don't generate identifiers from headers because we want the identifiers
# to be stable to allow references from other documents, but we want to allow
# the header text to be changed.  Plus the auto-identifiers end up too verbose.
%.html:	%.md
	pandoc -f markdown+header_attributes-auto_identifiers -o "$@" "$^"

clean:
	rm -f $(SOURCES:%.md="%.html")
