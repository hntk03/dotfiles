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

# mise
ln -s "$CURRENT_DIR/mise-config" "$CONFIG_DIR/mise"

#neovim
ln -s "$CURRENT_DIR/nvim" "$CONFIG_DIR/nvim"

files=(".clang-format" ".clang-tidy" ".editorconfig" ".tigrc" ".zshenv" ".zshrc")

for file in ${files[@]}; do
  ln -s "$CURRENT_DIR/$file" "$HOME/$file"
done
