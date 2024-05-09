.PHONY: *

all: home

clean: clean-home

home:
	stow --dotfiles --restow --target=$$HOME home

clean-home:
	stow --dotfiles --delete --target=$$HOME home
