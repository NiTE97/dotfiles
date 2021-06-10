# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e .config/zsh/manjaro-zsh-config ]]; then
  source .config/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e .config/zsh/manjaro-zsh-prompt ]]; then
  source .config/zsh/manjaro-zsh-prompt
fi


#neofetch

figlet NiTE97 | lolcat --seed=100
