export PATH=$HOME/bin:/usr/local/go/bin:/usr/local/bin::/home/aaron/.local/bin:$PATH

alias zshconfig="code ~/.zshrc"

alias k="kubectl"
alias ka="kubectl --all-namespaces=true"
alias ksys="kubectl --namespace=kube-system"
alias vbm="vboxmanage"
alias hug="hub"
alias codehub="code . && github ."
# https://askubuntu.com/a/473770
alias clr="clear && printf '\e[3J'"
# nuke the go modules cache
alias rm-gocache="sudo rm -rf $GOPATH/pkg/mod"
# nuke docker thingies
alias docker-prune="docker image prune && docker system prune"
# cd into the ~/src directory
alias src="cd ~/src"
# list everything
alias ls="exa -al"

# git[hub] aliases
alias gpush="git push"
alias gadd="git add"
alias gpull="git pull"
alias gcomm="git commit -s"
alias gcheck="git checkout"
alias gco="git checkout"
alias gstat="git status"
alias gs="git status"
alias gdiff="git diff"
alias gfetch="git fetch"
alias gf="git fetch"
alias hpullreq="hub pull-request"
alias hpr="hub pull-request"

alias ypush="yadm push"
alias ycomm="yadm commit -s"
alias ys="yadm status"
alias ydiff="yadm diff"
alias yadd="yadm add"
alias ypull="yadm pull"

alias tkeylight="keylight -a http://192.168.1.2:9123"

export PATH=$PATH:$(go env GOROOT)/bin

# go env vars
export GOPATH=$HOME/go
export GOSRC=$GOPATH/src
export GO111MODULE=on
export PATH=$GOPATH/bin:$PATH
export GOPROXY=https://proxy.golang.org

# k8s env vars
export KUBERNETES_PROVIDER=vagrant
export KUBERNETES_MASTER_MEMORY=2048
export KUBERNETES_MINION_MEMORY=6144

# swift env vars for OS X
export TOOLCHAINS=swift

export EDITOR=nano
source $HOME/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"
eval "$(direnv hook zsh)"
export PATH="/usr/local/opt/llvm/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
if [[ "$OSTYPE" == "darwin"* ]]; then
    VSCODE_BIN="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
    export PATH="$PATH:$VSCODE_BIN"
    export CGO_ENABLED=1;
    export CC=gcc;
fi

# https://stackoverflow.com/questions/29963617/how-to-call-vs-code-editor-from-command-line/33831403#33831403
# code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
export PATH="/usr/local/sbin:/usr/local/kubebuilder/bin:$PATH"
export PATH="/usr/local/opt/llvm@8/bin:$PATH"

# For the 'code' CLI in wsl2
export PATH="/mnt/c/Users/me/AppData/Local/Programs/Microsoft\ VS\ Code/bin/:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/arschles/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/arschles/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/arschles/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/arschles/google-cloud-sdk/completion.zsh.inc'; fi

# you can install starship from https://starship.rs/
eval "$(starship init zsh)"

eval "$(thefuck --alias)"

# asdf init: https://asdf-vm.com/#/core-manage-asdf
# echo -e "\n. $(brew --prefix asdf)/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc

export PATH="$HOME/.poetry/bin:$PATH"
