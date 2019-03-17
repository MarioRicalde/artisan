#!/usr/bin/env bash

# Install all available updates
sudo softwareupdate -ia --verbose

# Install Xcode command line tools
xcode-select --install
