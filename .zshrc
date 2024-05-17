# =================================
# ---- PERSONAL CONFIG START ------
# =================================

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level

# -- Kubernetes --
alias k='kubectl'
alias kl='k logs -f' # kl {pod-name}

alias ka='kubectl apply -f'
alias kaf='kubectl apply -f'
alias kd='kubectl delete -f'
alias kdf='kubectl delete -f'

alias kdes='kubectl describe'
alias kd='kubectl delete'
alias kg='kubectl get'

alias kgp='kubectl get pods'
alias kgpw='kgp --watch'	
alias kgpwow='kgp --watch -o wide'	

# -- Kubernetes tools --
alias kz='kustomize'
alias kzb='kustomize build'

alias kc='kubectx'
alias kn='kubens'

alias k9='k9s --logoless --headless --crumbless'

alias kgpip='kubectl get pods -o custom-columns="POD:metadata.name,STATUS:status.phase,IP:status.podIP"'

# Run a one-off pode with a bash shell
# kubectl run --rm debug-utils -it --image cooervo/debug-net-utils bash

# -- Terraform --
alias tf='terraform'
alias tfp='terraform plan'
alias tfd='terraform destroy'
alias tfa='terraform apply'
alias tfaaa='terraform apply -auto-approve'

# -- Pulumi --
alias p='pulumi'
alias pu='pulumi up'
alias purn="pulumi stack --show-urns"
alias purndel="pulumi state delete" # p state delete urn:pulumi:party-k8s-core::gcp-kubernetes::kubernetes:yaml:ConfigGroup$kubernetes:yaml:ConfigFile::./environments/party/istio-system/gateway.yaml

# -- Bash --
alias nn='nano'                              # for using nano
alias finder='open -a Finder ./'            # f:            Opens current directory in MacOS Finder
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias c='clear'                             # c:            Clear terminal display
alias l='clear && ls -la'
alias getip='hostname -I' 
alias cc="gh copilot explain"
alias ccs="gh copilot sugest"
# -- Docker --
alias dc="docker-compose"
alias dprune="docker system prune -a"
alias dclean="docker system prune -a"

# -- Git --
alias gs="git status"
alias ga="git add"
alias gc="git checkout"
alias gcb="git checkout -branch "
alias g="git"
alias gf="git fetch"
alias ge="git push"
alias gpu="git pull"
alias gha="git pull"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

export EDITOR=/usr/bin/nano 


# =================================
# ----      Examples         ------
# =================================

# Symbolic link: 
# link new-file.ts to by updated everytime reference-file.ts is changed:
# ln -s ../en/reference-file.ts ./new-file.ts

# Get process on port 3000 or X 
# lsof -i :3000
