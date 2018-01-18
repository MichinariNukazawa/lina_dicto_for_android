
.PHONY: all

all: copy

.PHONY: copy

LINA_DICTO_ASSETS_DIR=app/src/main/assets/lina_dicto

copy:
	bash ./tool/copy.sh
	bash ./tool/loader.sh "$(LINA_DICTO_ASSETS_DIR)/js/dictionary_loader.js"
	bash ./tool/loader.sh "$(LINA_DICTO_ASSETS_DIR)/js/esperanto_language.js"
	echo "'use strict';" > $(LINA_DICTO_ASSETS_DIR)/js/menu.js
	echo "'use strict';" > $(LINA_DICTO_ASSETS_DIR)/js/file_loader.js
	cp -r ./lina_dicto/overwrite/* $(LINA_DICTO_ASSETS_DIR)/
	rm -rf $(LINA_DICTO_ASSETS_DIR)/data/
	# remove electron settings
	rm -rf $(LINA_DICTO_ASSETS_DIR)/node_modules/
	rm -rf $(LINA_DICTO_ASSETS_DIR)/*.js
	rm -rf $(LINA_DICTO_ASSETS_DIR)/*.json

clean:
	rm -rf $(LINA_DICTO_ASSETS_DIR)

