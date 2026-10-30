STOW := stow --dotfiles --target=$$HOME

default:
	$(STOW) \
	  bash \
	  emacs \
	  mango \
	  noctalia
.PHONY: default
