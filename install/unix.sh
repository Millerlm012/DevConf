#/bin/bash

# cloning repo to /tmp
if [ -d /tmp/DevConf ]; then
  rm -rf /tmp/DevConf
fi
git clone https://github.com/Millerlm012/DevConf /tmp/DevConf


# making config dir and sub dirs
if [ ! -d ~/.config ]; then
	mkdir ~/.config
fi

if [ ! -d ~/.config/alacritty ]; then
	mkdir ~/.config/alacritty
fi
cp -r /tmp/DevConf/config/alacritty/ ~/.config/alacritty/


if [ ! -d ~/.config/tmux ]; then
	mkdir ~/.config/tmux
fi
cp -r /tmp/DevConf/config/tmux ~/.config/tmux/


if [ ! -d ~/.config/nvim ]; then
	mkdir ~/.config/nvim
	git clone https://github.com/LazyVim/starter ~/.config/nvim
else
	echo "nvim dir already exists, creating a backup and installing lazyvim"
  current_date_time=$(date +"%Y%m%d_%T")
	if [ -d ~/.config/nvim ]; then 
    mv ~/.config/nvim{,_$current_date_time.bak}
  fi
  if [ -d ~/.local/share/nvim ]; then
	  mv ~/.local/share/nvim{,_$current_date_time.bak}
  fi
  if [ -d ~/.local/state/nvim ]; then
  	mv ~/.local/state/nvim{,_$current_date_time.bak}
  fi
  if [ -d ~/.cache/nvim ]; then
  	mv ~/.cache/nvim{,_$current_date_time.bak}
  fi
	git clone https://github.com/LazyVim/starter ~/.config/nvim
fi

