    # ================================= PERSONAL CONFIG START ==========================================================

    alias cp='cp -iv'                           # Preferred 'cp' implementation
    alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
    alias ..='cd ../'                           # Go back 1 directory level

    alias nn='nano'                              # for using nano
    alias finder='open -a Finder ./'            # f:            Opens current directory in MacOS Finder
    alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
    alias ~="cd ~"                              # ~:            Go Home
    alias c='clear'                             # c:            Clear terminal display
    alias l='ls -a'

    # ========Set nano as default editor ==========

    export EDITOR=/usr/bin/nano


    # =========Loads NVM=============

    export NVM_DIR="/Users/mateo/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"


    # ======== Networking ==========
    
    # Get info for process using port 3000 or X 
    # lsof -i :3000

    alias getip='hostname -I'

    # ============= Git ==============
    alias gs="git status"
    alias ga="git add -A ."
    alias gc="git commit -m"
    
    # Symbolic link: link new-file.ts to by updated everytime reference-file.ts is changed:
    # ln -s ../en/reference-file.ts ./new-file.ts

