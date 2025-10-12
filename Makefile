.PHONY: run
run:
	jekyll serve --drafts

clean:
	jekyll clean

publish:
	./scripts/publish.sh
