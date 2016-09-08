

# ======= Custom aliases =======

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level

alias nn='nano'                              # for using nano
alias finder='open -a Finder ./'            # f:            Opens current directory in MacOS Finder
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths

# ========Set nano as default editor ==========

export EDITOR=/usr/bin/nano


# ========Change prompt as "user@host & Display git branch"=============

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

export CLICOLOR=1


# ========List (ls)=======

export LSCOLORS=GxFxCxDxBxegedabagaced  # List colors
alias ls='ls -GFh'                      # Preferred list implementation
alias lspermissions='ls -li'


# =========Loads NVM=============

export NVM_DIR="/Users/mateo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"


# ======== Networking ==========

alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections



# ============= Git ==============
alias s="git status"



