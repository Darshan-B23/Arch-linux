#sourced in ~/.zshrc
# 1. Enable Tab Completion (Without this, pressing Tab does nothing)
autoload -Uz compinit && compinit

# 2. Command History (So the up-arrow remembers your past commands)
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# 3. Default Vanilla Prompt (username@machine ~/current_folder %)
PROMPT="%n@%m %~ %# "

# 4. Display system info on startup
fastfetch