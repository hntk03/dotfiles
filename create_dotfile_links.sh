#!/bin/bash

CURRENT_DIR=$(pwd)
CONFIG_DIR="$HOME/.config"

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
