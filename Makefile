
.PHONY: all

all: move

.PHONY: move

move:
	bash ./tool/copy.sh
	bash ./tool/dict.sh
	echo "'use strict';" > app/src/main/assets/lina_dicto/js/menu.js
	rm -rf node_modules/
	rm -rf data/
	rm -rf *.js
	rm -rf *.json

