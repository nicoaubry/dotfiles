# tools@nicoaubry

## Development Setup

### Xcode Install

1. Install Xcode from the Mac App Store.
2. Install command line tools with `xcode-select --install`

### Homebrew Install

[Homebrew](http://brew.sh)

```bash
# install homebrew
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# check the install
$ brew doctor
```

### Cask Install

[Cask](http://caskroom.io) and [Cask Versions](https://github.com/caskroom/homebrew-versions)

```bash
# install cask
$ brew install caskroom/cask/brew-cask
# install cask versions
$ brew tap caskroom/versions
```

### Languages

```bash
# install python stuff.
$ brew install python
$ pip install --upgrade setuptools
$ pip install --upgrade pip

# install java
$ brew cask install java

# install scala stuff
$ brew install scala --with-docs --with-src
$ brew install sbt
```

### Tools & Apps

```bash
# much better than ack
$ brew install ag

# install git
$ brew install git

$ brew cask install dropbox
$ brew cask install istat-menus
$ brew cask install iterm2
$ brew cask install atom
# idea ultimate -> brew cask install intellij-idea
$ brew cask install intellij-idea-ce
$ brew cask install skype
$ brew install macvim --override-system-vim --with-luai
$ brew cask install vimr
$ brew cask install vlc
```

### Clone tools

```bash
$ cd ~
$ git clone https://github.com/nicoaubry/tools.git
```

### Softlinks and Folders
```bash
$ cd ~
$ ln -s ~/dotfiles/macosx/bash/bash_profile .bash_profile
$ source .bash_profile
$ ln -s ~/dotfiles/git/gitconfig .gitconfig
```
