#!/bin/bash
set -v

# Update Brewfile
BrewfilePath="$HOME/.local/share/chezmoi/Brewfile"
brew bundle dump --file="$BrewfilePath.tmp" --force
echo "cask_args adopt: true" > $BrewfilePath
cat $BrewfilePath.tmp >> $BrewfilePath
rm $BrewfilePath.tmp
