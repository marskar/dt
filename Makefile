slides: index.ipynb
	jupyter nbconvert index.ipynb --to slides --reveal-prefix="https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.5.0"
	mv index.slides.html index.html

init: .git/

.git/:
	curl --user 'marskar' https://api.github.com/user/repos --data '{"name":"dt","description":"A presentation about decision trees."}'
	git init
	git add --all
	git commit --message "First commit"
	git remote add origin https://github.com/marskar/ds101.git
	git push --set-upstream origin master


