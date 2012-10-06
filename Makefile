all:

test: compile
	npm test

compile: lib/handlebars/compiler/parser.js

lib/handlebars/compiler/parser.js: src/handlebars.yy src/handlebars.l
	./node_modules/.bin/jison $^ -o $@

clean:
	rm lib/handlebars/compiler/parser.js

.PHONY: clean compile test
