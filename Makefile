stow := stow --dotfiles --target=$$HOME

stow:
	$(stow) \
	  bash \
	  emacs \
	  sway
.PHONY: stow
