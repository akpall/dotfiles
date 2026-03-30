STOW := stow --dotfiles --target=$$HOME

default:
	$(STOW) \
	  bash \
	  emacs \
	  sway
.PHONY: default
