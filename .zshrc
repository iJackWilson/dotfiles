LC_ALL=C

# Load dotfiles
for file in ~/.{aliases,exports,functions}; do

  if [[ -r "${file}" ]] && [[ -f "${file}" ]]; then
    source "${file}"
  fi

done

setopt HIST_IGNORE_SPACE
PROMPT="%F{green}%~%f "

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jack.wilson/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jack.wilson/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jack.wilson/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jack.wilson/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# fnm
FNM_PATH="/opt/homebrew/opt/fnm/bin"
if [ -d "$FNM_PATH" ]; then
  eval "`fnm env`"
fi
