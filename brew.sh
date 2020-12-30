#!/usr/bin/env bash

# Install tools using Homebrew.
brew update
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --override-system-vi

# Install version control tools.
brew install git
brew install hub

# Install search tools
brew install ag
brew install ack

# Install directory tools
brew install tree

# Install third party tools
brew install n
brew install youtube-dl

# Install gui applications
brew install --cask 1password
brew install --cask alfred
brew install --cask google-chrome
brew install --cask slack
brew install --cask spotify
brew install --cask zoom

brew cleanup
