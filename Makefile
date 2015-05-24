all:
	@cp lib/wemark.js wemark.js
	@uglifyjs --comments '/\*[^\0]+?Copyright[^\0]+?\*/' -o wemark.min.js lib/wemark.js

clean:
	@rm wemark.js
	@rm wemark.min.js

bench:
	@node test --bench

.PHONY: clean all
