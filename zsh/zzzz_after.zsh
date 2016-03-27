# Load any custom after code
if [ -d $HOME/.zsh.after/ ]; then
  if [ "$(ls -A $HOME/.zsh.after/)" ]; then
    for config_file ($HOME/.zsh.after/*.zsh) source $config_file
  fi
fi

eval "$(rbenv init -)"

export PATH=./bin:node_modules/.bin:/usr/local/bin:/usr/local/sbin:$PATH
