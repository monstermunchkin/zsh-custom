# NOTE: https://github.com/robbyrussell/oh-my-zsh/issues/1398

if [ "x$CASE_SENSITIVE" = "xtrue" ]; then
  zstyle ':completion:*' matcher-list 'r:|=*'
  unset CASE_SENSITIVE
else
  zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*'
fi

zstyle ':completion:*:commands' rehash 1
