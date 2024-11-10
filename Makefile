all:
	ln -s "$$(pwd)/.tmux.conf" "$$HOME/.tmux.conf"
	-git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	~/.tmux/plugins/tpm/scripts/install_plugins.sh

force:
	ln -sf "$$(pwd)/.tmux.conf" "$$HOME/.tmux.conf"
	-git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	~/.tmux/plugins/tpm/scripts/install_plugins.sh

.PHONY: all force
