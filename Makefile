PANDOC = pandoc
PANDOC_OPTS = -V title=""

HTMLOUT = index.html

all: $(HTMLOUT)

%.html: %.md %.header.html
	$(PANDOC) $< -H $(word 2,$^) $(PANDOC_OPTS) -o $@

clean:
	$(RM) $(HTMLOUT)

.PHONY: all clean
