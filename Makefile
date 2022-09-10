
.PHONY: install
install: vim

.PHONY: vim
vim:
	ln -sh $(CURDIR)/vim ~/.vim
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

.PHONY: fish
fish:
	mkdir -p ~/.config
	ln -sh $(CURDIR)/fish ~/.config/fish
	fish -c "curl -sL git.io/fisher | source && fisher update"
