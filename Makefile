NANOC_ENV = production
GUIDELINES = content/guidelines
last_guideline = $$(basename "$$(ls "$(GUIDELINES)" | sort -n | tail -n1)" .md)
next_guideline = $$(expr $(last_guideline) + 1)
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

guideline:
	@\
	next=$(next_guideline); \
	file="$(GUIDELINES)/$$(printf "%03g" $$next).md"; \
	touch "$$file"; \
	echo "Created $$file.";

guidelines:
	@\
	echo "Creating guidelines. Press Ctrl-C to exit."; \
	while i=$$(printf "%03g" $(next_guideline)); do \
	  echo "Creating $(GUIDELINES)/$$i.md‥ Press Ctrl-D when done."; \
	  cat | fmt -w80 >> "$(GUIDELINES)/$$i.md"; \
	done

publish:
	@bundle exec nanoc compile
	@bundle exec nanoc deploy -t default

prune:
	bundle exec nanoc prune --yes

clean:
	rm -rf tmp output

.PHONY: love
.PHONY: compile autocompile
.PHONY: server
.PHONY: guideline guidelines
.PHONY: publish
.PHONY: prune clean
