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

# mise
ln -s "$CURRENT_DIR/mise-config" "$CONFIG_DIR/mise"

directories=("alacritty" "tmux" "nvim")

for d in ${directories[@]}; do
  ln -s "$CURRENT_DIR/$d" "$CONFIG_DIR/$d"
done

files=(".clang-format" ".clang-tidy" ".editorconfig" ".tigrc" ".zshenv" ".zshrc")

for file in ${files[@]}; do
  ln -s "$CURRENT_DIR/$file" "$HOME/$file"
done
