XDG_CONFIG_HOME ?= "${HOME}/.config"

.PHONY: set
set:
	mkdir -p "${XDG_CONFIG_HOME}"
	
	ln -fsv "${PWD}/src/tmux/.tmux.conf" "${HOME}"
	ln -fsv "${PWD}/src/zsh/.profile"    "${HOME}"
	ln -fsv "${PWD}/src/zsh/.zprofile"   "${HOME}"
	ln -fsv "${PWD}/src/zsh/.zshrc"      "${HOME}"
	
	ln -fsv "${PWD}/src/git"    "${XDG_CONFIG_HOME}"
	ln -fsv "${PWD}/src/mpv"    "${XDG_CONFIG_HOME}"
	ln -fsv "${PWD}/src/nvim"   "${XDG_CONFIG_HOME}"
	ln -fsv "${PWD}/src/yt-dlp" "${XDG_CONFIG_HOME}"
	ln -fsv "${PWD}/src/ytfzf"  "${XDG_CONFIG_HOME}"
	ln -fsv "${PWD}/src/zsh"    "${XDG_CONFIG_HOME}"
	
	ln -fsv "${PWD}/src/starship/starship.toml" "${XDG_CONFIG_HOME}"

.PHONY: unset
unset:
	rm -fv "${HOME}/.tmux.conf"
	rm -fv "${HOME}/.profile"
	rm -fv "${HOME}/.zprofile"
	rm -fv "${HOME}/.zshrc"
	
	rm -fv "${XDG_CONFIG_HOME}/git"
	rm -fv "${XDG_CONFIG_HOME}/mpv"
	rm -fv "${XDG_CONFIG_HOME}/nvim"
	rm -fv "${XDG_CONFIG_HOME}/yt-dlp"
	rm -fv "${XDG_CONFIG_HOME}/ytfzf"
	rm -fv "${XDG_CONFIG_HOME}/zsh"
	
	rm -fv "${XDG_CONFIG_HOME}/starship.toml"