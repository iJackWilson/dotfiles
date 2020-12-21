LC_ALL=C

# ALIASES
alias brewski='brew update && brew upgrade && brew cask upgrade && brew cleanup; brew doctor'
alias ls='ls -GFh1'
alias ll='ls -GFhl'
alias la='ls -GFhla'
alias dir='ls -d */ | cut -f1 -d'/''
alias grep='grep --color'
alias ip='curl ifconfig.co'
alias pacu='docker run -it -v ~/.aws:/root/.aws rhinosecuritylabs/pacu:latest'
alias grepip='grep -Eo "([0-9]{1,3}\.){3}[0-9]{1,3}(\/([0-9]|[1-2][0-9]|3[0-2]))?"'
alias testssl='docker run --rm -ti  drwetter/testssl.sh:3.1dev'
alias s='git status'
alias gp='git pull'
alias p1='ping -c 4 1.1'
alias htb='sudo /usr/local/Cellar/openvpn/2.4.9/sbin/openvpn ~/iJackWilson.ovpn'
alias weather='curl wttr.in?u'

# FUNCTIONS
function mkcd () {
	mkdir -p $1;
	cd $1;
}

function fng {
	find . | grep -i "$1";
}

function pwgen {
	LC_ALL=C tr -dc A-Za-z0-9 </dev/urandom | head -c $1 ; echo
}

repeatChar() {
    local input="$1"
    local count="$2"
    printf -v myString "%s" "%${count}s"
    printf '%s\n' "${myString// /$input}"
}

# EXPORTS
export BASH_SILENCE_DEPRECATION_WARNING=1
export PS1="\[\e[32m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]\[\e[32m\]:\[\e[m\]\W\\$ "
export PATH="$PATH:/Users/jack.wilson/Library/Python/2.7/bin:/Users/jack.wilson/go/bin"
export GOPATH="$HOME/go"
export PATH=$PATH:/opt/metasploit-framework/bin
export PATH=$PATH:/usr/local/bin/

