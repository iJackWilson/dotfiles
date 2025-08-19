dotfiles:
	# Create symlinks
	ln -s $(PWD)/.zshrc $(HOME)/.zshrc
	ln -s $(PWD)/.aliases $(HOME)/.aliases
	ln -s $(PWD)/.functions $(HOME)/.functions
	ln -s $(PWD)/.exports $(HOME)/.exports
	ln -s $(PWD)/.gitignore $(HOME)/.gitignore
	ln -s $(PWD)/.vimrc $(HOME)/.vimrc
	ln -s $(PWD)/.hushlogin $(HOME)/.hushlogin
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

iterm:
	# Import iTerm2 plist
	# Restart of iTerm required after this
	cp $(PWD)/com.googlecode.iterm2.plist ~/Library/Preferences/

# TODO
# move .zshrc into source control (tried this but got readonly file system error)
# check for ~/.ssh and create if it doesn't exist
# add symlink for SSH config
# install AWS CLI
# create symlink for aws config
