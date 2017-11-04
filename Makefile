
.PHONY: all

all: move

.PHONY: move

LINA_DICTO_ASSETS_DIR=app/src/main/assets/lina_dicto

move:
	bash ./tool/copy.sh
	bash ./tool/dict.sh
	echo "'use strict';" > $(LINA_DICTO_ASSETS_DIR)/js/menu.js
	cp -r ./lina_dicto/overwrite/* $(LINA_DICTO_ASSETS_DIR)/
	rm -rf $(LINA_DICTO_ASSETS_DIR)/data/
	# remove electron settings
	rm -rf $(LINA_DICTO_ASSETS_DIR)/node_modules/
	rm -rf $(LINA_DICTO_ASSETS_DIR)/*.js
	rm -rf $(LINA_DICTO_ASSETS_DIR)/*.json

clean:
	rm -rf $(LINA_DICTO_ASSETS_DIR)

