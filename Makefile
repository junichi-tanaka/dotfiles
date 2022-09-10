
.PHONY: install

install: ~/.vim

~/.vim:
	ln -s $(CURDIR)/vim ~/.vim
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
