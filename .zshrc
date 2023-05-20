# mail
export MAIL=$USER@student.42tokyo.jp

# 色を使用出来るようにする
autoload -Uz colors
colors

# EditorをVimに設定
export EDITOR=vim
# vim 風キーバインドにする
bindkey -v
bindkey "jk" vi-cmd-mode

# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

# PROMPT='%~ %\n> '
PROMPT='
[%B%F{red}%n@%m%f%b:%F{green}%~%f]%F{cyan}$vcs_info_msg_0_%f
%F{yellow}>%f '
#[%B%F{red}%n@%m%f%b:%F{green}%~%f]
#%F{yellow}>%f '

# lsでls -GFを使える
alias ls='ls -F'
# ccでcc -Wall -Wextra -Werrorを使える
#alias ccft='gcc -Wall -Wextra -Werror -o ykusano42'
alias ccft='cc -Wall -Wextra -Werror'
alias mini='cc -Wall -Wextra -Werror -lreadline -o minishell'
# git add . commit -m pushまでを一気に行う
alias gacp='(){git add . && git commit -m $1 && git push && echo "\n[git status]" && git status}'
# 補完機能
# 補完機能を有効にする
autoload -Uz compinit && compinit
# 小文字でも大文字ディレクトリ、ファイルを補完できるようにする
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# ディレクトリ名だけでcdする
#setopt auto_cd

# so-long用のalias
#alias so='cc -L/usr/X11R6/lib -lX11 -lX11 -lXext -framework OpenGL -framework AppKit -o so_long'
