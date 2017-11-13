.PHONY: clean

RESOURCES := material
PACKAGE := $(RESOURCES).tar.gz

$(PACKAGE): $(RESOURCES)
	tar cvfz $(PACKAGE) $(RESOURCES)

$(RESOURCES): book
	mkdir -p $(RESOURCES)
	cp -r book/docs material/book

book:
	git clone https://github.com/boiding/book.git

clean:
	rm -f $(PACKAGE)
	rm -rf $(RESOURCES)
	rm -rf book
