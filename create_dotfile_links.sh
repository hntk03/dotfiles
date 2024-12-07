#!/bin/bash

CURRENT_DIR=$(pwd)
CONFIG_DIR="$HOME/.config"

# .configファイルを作成
mkdir -pv $CONFIG_DIR

# Alacritty 
CONFIG_ALACRITTY_DIR="$CONFIG_DIR/alacritty"

mkdir -pv $CONFIG_ALACRITTY_DIR
ln -sv "$CURRENT_DIR/alacritty.toml" "$CONFIG_ALACRITTY_DIR"

# tmux
ln -sv "$CURRENT_DIR/tmux.conf" "$HOME/.tmux.conf"

# vim
ln -sv "$CURRENT_DIR/vimrc" "$HOME/.vimrc"

ln -sv "$CURRENT_DIR/zpreztorc" "$HOME/.zpreztorc"
ln -sv "$CURRENT_DIR/zshenv" "$HOME/.zshenv"