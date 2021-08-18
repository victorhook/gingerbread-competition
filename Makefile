dev:
	xdg-open http://127.0.0.1:4000/gingerbread-competition/
	bundle exec jekyll serve

run: dev

sync:
	rsync -a backend/* --exclude backend/env/* git@142.93.164.184:/home/git/web/gingerbread/

push:
	git add _posts/
	git commit -m "New post"
	git push

update:
	git add _posts/
	git commit --no-edit --amend
	git push -f
