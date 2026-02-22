#!/bin/bash

CURRENT_DIR=$(pwd)
CONFIG_DIR="$HOME/.config"

set_link_in_config() {
	local app_name=$1
	local file_name=$2

	local app_config_dir="$CONFIG_DIR/$app_name"
	mkdir -p "$app_config_dir"
	ln -s "$CURRENT_DIR/$file_name" "$app_config_dir/$file_name"
}

# .configファイルを作成
mkdir -p $CONFIG_DIR

# Alacritty
set_link_in_config alacritty alacritty.toml

# tmux
set_link_in_config tmux tmux.conf

# vim
mkdir -p "$HOME/.vim"
ln -s "$CURRENT_DIR/template" "$HOME/.vim/template"
ln -s "$CURRENT_DIR/vimrc" "$HOME/.vimrc"

#neovim
ln -s "$CURRENT_DIR/nvim" "$CONFIG_DIR/nvim"

# zsh
ln -s "$CURRENT_DIR/zshrc" "$HOME/.zshrc"

# clang-format
ln -s "$CURRENT_DIR/clang-format" "$HOME/.clang-format"

# clang-tidy
ln -s "$CURRENT_DIR/clang-tidy" "$HOME/.clang-tidy"
