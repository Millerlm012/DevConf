#/bin/bash

# making config dir and sub dirs
if [ ! -d "~/.config" ]; then
	mkdir ~/.config
fi

if [ ! -d "~/.config/alacritty"]; then
	mkdir ~/.config/alacritty
	touch ~/.config/alacritty/alacritty.toml
fi

if [ ! -d "~/.config/tmux"]; then
	mkdir ~/.config/tmux
	touch ~/.config/tmux/tmux.conf
fi

if [ ! -d "~/.config/nvim"]; then
	mkdir ~/.config/nvim
fi
