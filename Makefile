NANOC_ENV = production
export NANOC_ENV

love:
	@echo "Feel like makin' love."

compile:
	@bundle exec nanoc compile

autocompile: NANOC_ENV = development
autocompile:
	@bundle exec guard start

server:
	@echo "Starting server on http://localhost:4000‥"
	@bundle exec nanoc view -p 4000 2>/dev/null

publish:
	@bundle exec nanoc deploy --target nutikaitse.ee

prune:
	bundle exec nanoc prune --yes

clean:
	rm -rf tmp output

.PHONY: love
.PHONY: compile autocompile
.PHONY: server
.PHONY: publish
.PHONY: prune clean
