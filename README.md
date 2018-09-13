dotfiles
========

## Prerequisite

### install homebrew
see https://brew.sh/

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### install prerequisite dependencies
```
$ brew install mas
$ brew tap buo/cask-upgrade
```

## Usage

```
$ brew bundle
```

If you need to get the installed dependencies list, you will run the command bellow.
Make sure you need to run where ```Brewfile``` does not exist.
```
$ brew bundle dump
```

