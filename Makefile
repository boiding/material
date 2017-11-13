.PHONY: clean

material.tar.gz: material
	tar cvfz material.tar.gz material

material: book
	mkdir -p material
	cp -r book/docs material/book

book:
	git clone https://github.com/boiding/book.git

clean:
	rm -f material.tar.gz
	rm -rf material
	rm -rf book
