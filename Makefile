dotfiles:
	# Create symlinks
	ln -s $(pwd)/.profile $(HOME)/.profile
	ln -s $(pwd)/.aliases $(HOME)/.aliases
	ln -s $(pwd)/.functions $(HOME)/.functions
	ln -s $(PWD)/.exports $(HOME)/.exports
	ln -s $(pwd)/.gitignore $(HOME)/.gitignore
	ln -s $(pwd)/.vimrc $(HOME)/.vimrc
	ln -s $(pwd)/.hushlogin $(HOME)/.hushlogin
	# Configure environment
	source $(HOME)/.zshrc
	git config --global core.excludesFile '$(HOME)/.gitignore'
	if [ ! -d "$(HOME)/.aws/" ]; then
		mkdir $(HOME)/.aws/
	fi

brew:
	# Install Homebrew
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	# Install bundle
	brew tap Homebrew/bundle
	# Install programs from the bundle file
	# Note: `make dotfiles` must be ran before `make brew`, as the .exports file sets the Brewfile location
	brew bundle

ohmyzsh:
	# Install ohmyzsh
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# TODO
# move .zshrc into source control (tried this but got readonly file system error)
# check for ~/.ssh and create if it doesn't exist
# add symlink for SSH config
# install AWS CLI
# create symlink for aws config