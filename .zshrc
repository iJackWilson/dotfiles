LC_ALL=C

# Load dotfiles
for file in ~/.{aliases,exports,functions}; do

  if [[ -r "${file}" ]] && [[ -f "${file}" ]]; then
    source "${file}"
  fi

done