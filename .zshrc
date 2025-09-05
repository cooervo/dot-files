# =================================
# ---- PERSONAL CONFIG START ------
# =================================

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level

# -- Kubernetes --
alias k='kubectl'
alias kl='k logs -f' # kl {pod-name}

alias kaf='kubectl apply -f'
alias kdf='kubectl delete -f'

alias kde='kubectl describe'
alias kex='kubectl explain'
alias kd='kubectl delete'
alias kg='kubectl get'
alias kc='kubectl create'

alias kgp='kubectl get pods'
alias kgpw='kgp --watch'	
alias kgpwow='kgp --watch -o wide'	

# get the latest events in a namespace sorted by lastTimestamp
kube-events() {
  if [ -z "$1" ]; then
    echo "Usage: kube-events <namespace>"
    return 1
  fi

  kubectl -n "$1" get events --sort-by='{.lastTimestamp}' --watch
}

alias ke='kube-events'
# kla short for kube latest events
alias kle='kube-events'

# needs yq pre-installed (brew install yq)
# Usage example: kzb_name overlays/istio-system/ istio-ingressgateway
kzb_name() {
  local path=$1 # dir path to overlay target
  local name=$2 # name of the resource

  
  # which kustomize output /opt/homebrew/bin/kustomize
  local kustomize_cmd="/opt/homebrew/bin/kustomize"
  # which yq        output /opt/homebrew/bin/yq
  local yq_cmd="/opt/homebrew/bin/yq"

  # find resource where metadata.name contains the given 
  $kustomize_cmd build "$path" | $yq_cmd eval '
    . | select(.metadata.name | contains("'"$name"'"))
  ' -P
}


alias kzbn='kzb_name' # Usage example: kzbn overlays/istio-system/ status # will match partial strings

alias kc='kubectx'
alias kn='kubens'
alias k9='k9s --logoless --headless --crumbsless'

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
alias pl='pulumi login'
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
alias rg="rg -i" # case insensitive ripgrep search

# -- Docker --
alias dc="docker-compose"
alias dprune="docker system prune -a"
alias dclean="docker system prune -a"

# -- Golang --
alias gr="go run"

# -- Git --
alias gs="git status"
alias ga="git add"
alias gc="git checkout"
alias gcb="git checkout -b"
alias g="git"
alias gf="git fetch"
alias ge="git push"
alias gha="git pull"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

export EDITOR=/usr/bin/nano # Set nano as default editor

# -- Functions / Helpers --

# docker pull from public registry and push to GCP Artifact Registry
# 
# Example usage
# dd dev <gcp_project> <pulled_image> <image_name> 
# dd dev <gcp_project> ghcr.io/external-secrets/external-secrets:v0.9.18 <image_name>
dd() {
  local env="$1"
  local gcp_project="$2"
  local pulled_image="$3"
  local image_name="$4" # OPTIONAL to construct the new image subdir nesting in Registry

  # Extract IMAGE and TAG
  local image=$(echo "$pulled_image" | cut -d':' -f1 | awk -F'/' '{print $NF}')
  local tag=$(echo "$pulled_image" | cut -d':' -f2)
  
  local image="${image_name:-${image}}"
  local new_image="us-docker.pkg.dev/${gcp_project}/${env}-artifact-repository/${image}:${tag}"

  
  # Run docker commands
  docker pull --platform linux/amd64 "$pulled_image"
  docker tag "$pulled_image" "$new_image"
  docker push "$new_image"

  echo "Image pushed to: $new_image"
}


# =================================
# ----      Examples         ------
# =================================

# Symbolic link: 
# link new-file.ts to by updated everytime reference-file.ts is changed:
# ln -s ../en/reference-file.ts ./new-file.ts

# Get process on port 3000 or X 
# lsof -i :3000



