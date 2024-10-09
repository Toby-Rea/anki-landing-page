.PHONY: dev preview

# Determine the package manager to use
PM := $(shell command -v bun 2> /dev/null || command -v npm 2> /dev/null)

ifeq ($(PM),)
$(error "Error: Neither bun nor npm is installed.")
endif

dev:
	@$(PM) install && $(PM) run dev

preview:
	@$(PM) install && $(PM) run build && $(PM) run preview