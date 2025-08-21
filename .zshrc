LC_ALL=C

# Load dotfiles
for file in ~/.{aliases,exports,functions}; do

  if [[ -r "${file}" ]] && [[ -f "${file}" ]]; then
    source "${file}"
  fi

done

setopt HIST_IGNORE_SPACE
PROMPT="%F{green}%~%f "
