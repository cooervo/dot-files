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


    # =========Loads NVM=============

    export NVM_DIR="/Users/mateo/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"


    # ======== Networking ==========

    alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
    alias ports=openPorts         #lists open ports

    # ============= Git ==============
    alias s="git status"
    alias a="git add -A ."
    alias c="git commit -m"

    # ============= For bullet-train-oh-my-zsh-theme ================

    # -> Follow instructions on: https://github.com/caiogondim/bullet-train-oh-my-zsh-theme

    export TERM="xterm-256color"

    # ==================================== PERSONAL CONFIG END ============================================================^
