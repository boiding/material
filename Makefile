.PHONY: clean

RESOURCES := material
PACKAGE := $(RESOURCES).tar.gz
STARTERS := $(patsubst %,%-starter,minimalistic)

$(PACKAGE): $(RESOURCES)
	tar cvfz $(PACKAGE) $(RESOURCES)

$(RESOURCES): book $(STARTERS)
	mkdir -p $(RESOURCES)
	cp -r book/docs $(RESOURCES)/book
	cp -r *-starter $(RESOURCES)

book:
	git clone https://github.com/boiding/book.git

%-starter:
	git clone https://github.com/boiding/$@

clean:
	rm -f $(PACKAGE)
	rm -rf $(RESOURCES)
	rm -rf book
	rm -rf *-starter
