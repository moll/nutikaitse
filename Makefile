NANOC_ENV = production
NANOC_LANG = et
export NANOC_ENV
export NANOC_LANG

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
	@bundle exec nanoc deploy --target default

prune:
	bundle exec nanoc prune --yes

clean:
	rm -rf tmp output

.PHONY: love
.PHONY: compile autocompile
.PHONY: server
.PHONY: publish
.PHONY: prune clean
