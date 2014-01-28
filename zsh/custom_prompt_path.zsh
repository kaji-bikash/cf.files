#Load themes from cfdotfiles and from user's custom prompts (themes) in ~/.zsh.prompts
autoload promptinit
fpath=($HOME/.cf.files/zsh/prezto-themes $HOME/.zsh.prompts $fpath)
promptinit
