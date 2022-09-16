    # =================================
    # ---- PERSONAL CONFIG START ------
    # =================================

    alias cp='cp -iv'                           # Preferred 'cp' implementation
    alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
    alias ..='cd ../'                           # Go back 1 directory level

    alias nn='nano'                              # for using nano
    alias finder='open -a Finder ./'            # f:            Opens current directory in MacOS Finder
    alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
    alias c='clear'                             # c:            Clear terminal display
    alias l='clear && ls -la'
    
    # -- Docker --
    alias dc="docker-compose"
    alias dprune="docker system prune -a"
    alias dclean="docker system prune -a"

    # -- Git --
    alias gs="git status"
    alias ga="git add"
    alias gc="git checkout"
    alias g="git"
    alias gf="git fetch"
    alias ge="git push"
    alias gh="git pull"
    alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

    # -- Networking --
    alias getip='hostname -I' 

   
    export EDITOR=/usr/bin/nano # Set nano as default editor


    # =================================
    # ----      Examples         ------
    # =================================
    
    # Symbolic link: 
    # link new-file.ts to by updated everytime reference-file.ts is changed:
    # ln -s ../en/reference-file.ts ./new-file.ts
    
    # Get process on port 3000 or X 
    # lsof -i :3000

