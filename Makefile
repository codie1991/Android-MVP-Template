USER_TEMPLATES_DIR=~/.android/templates/other
TEMPLATES_DIR=MVP

install_templates:
	mkdir -p $(USER_TEMPLATES_DIR)
	rm -fR $(USER_TEMPLATES_DIR)/$(TEMPLATES_DIR)
	cp -R $(TEMPLATES_DIR) $(USER_TEMPLATES_DIR)

uninstall_templates:
	rm -fR $(USER_TEMPLATES_DIR)/$(TEMPLATES_DIR)
