.PHONY: check
check:
	shellcheck ./tui-resume

# compile the web version
.PHONY: web
web:
	cat tui-resume > web/index.txt

# deploy the website
.PHONY: deploy
deploy:
	rsync -avh --delete ./web/{index.html,index.txt,style.css} web:/var/www/example.com/tui-resume/
