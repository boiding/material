.PHONY: clean

RESOURCES := material
PACKAGE := $(RESOURCES).tar.gz
STARTERS := $(patsubst %,%-starter,minimalistic node)

$(PACKAGE): $(RESOURCES)
	tar cvfz $(PACKAGE) $(RESOURCES)

$(RESOURCES): book $(STARTERS)
	mkdir -p $@
	cp -r book $@
	cp -r *-starter $@

book:
	git clone --branch gh-pages https://github.com/boiding/book.git

%-starter:
	git clone https://github.com/boiding/$@

clean:
	rm -f $(PACKAGE)
	rm -rf $(RESOURCES)
	rm -rf book
	rm -rf *-starter
