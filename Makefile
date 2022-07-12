XDG_CONFIG_HOME ?= $(HOME)/.config

.PHONY: set
set:
	mkdir -p $(XDG_CONFIG_HOME)
	
	ln -fsv $(PWD)/src/zsh/.zshrc      $(HOME)
	
	ln -fsv $(PWD)/src/alacritty $(XDG_CONFIG_HOME)
	ln -fsv $(PWD)/src/bat       $(XDG_CONFIG_HOME)
	ln -fsv $(PWD)/src/fzf       $(XDG_CONFIG_HOME)
	ln -fsv $(PWD)/src/git       $(XDG_CONFIG_HOME)
	ln -fsv $(PWD)/src/mpv       $(XDG_CONFIG_HOME)
	ln -fsv $(PWD)/src/nvim      $(XDG_CONFIG_HOME)
	ln -fsv $(PWD)/src/tmux      $(XDG_CONFIG_HOME)
	ln -fsv $(PWD)/src/zsh       $(XDG_CONFIG_HOME)
	
	ln -fsv $(PWD)/src/starship/starship.toml $(XDG_CONFIG_HOME)

.PHONY: unset
unset:
	rm -fv $(HOME)/.zshrc
	
	rm -fv $(XDG_CONFIG_HOME)/alacritty
	rm -fv $(XDG_CONFIG_HOME)/bat
	rm -fv $(XDG_CONFIG_HOME)/fzf
	rm -fv $(XDG_CONFIG_HOME)/git
	rm -fv $(XDG_CONFIG_HOME)/mpv
	rm -fv $(XDG_CONFIG_HOME)/nvim
	rm -fv $(XDG_CONFIG_HOME)/tmux
	rm -fv $(XDG_CONFIG_HOME)/zsh
	
	rm -fv $(XDG_CONFIG_HOME)/starship.toml
