STOW := stow --dotfiles --target=$$HOME

default:
	$(STOW) \
	  bash \
	  emacs
.PHONY: default
