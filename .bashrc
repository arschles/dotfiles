export PATH=$HOME/bin:/usr/local/go/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.bin/downloads:$PATH

source $HOME/.aliases

export PATH=$PATH:$(go env GOROOT)/bin

# go env vars
export GOPATH=/src/gopath
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

# rust env vars
export CARGO_HOME=/src/cargo_home
export RUSTUP_HOME=/src/rustup_home
export EDITOR=nano
source $CARGO_HOME/env
export PATH="$CARGO_HOME/bin:$PATH"


eval "$(direnv hook bash)"
export PATH="/usr/local/opt/llvm/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
if [[ "$OSTYPE" == "darwin"* ]]; then
    VSCODE_BIN="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
    export PATH="$PATH:$VSCODE_BIN"
    export CGO_ENABLED=1;
    export CC=gcc;
fi

# https://stackoverflow.com/questions/29963617/how-to-call-vs-code-editor-from-command-line/33831403#33831403
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
export PATH="/usr/local/sbin:/usr/local/kubebuilder/bin:$PATH"
export PATH="/usr/local/opt/llvm@8/bin:$PATH"

# For the 'code' CLI in wsl2
export PATH="/mnt/c/Users/me/AppData/Local/Programs/Microsoft\ VS\ Code/bin/:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/arschles/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/arschles/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/arschles/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/arschles/google-cloud-sdk/completion.zsh.inc'; fi

# you can install starship from https://starship.rs/
eval "$(starship init bash)"

# asdf init: https://asdf-vm.com/#/core-manage-asdf
# echo -e "\n. $(brew --prefix asdf)/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc

export PATH="$HOME/.poetry/bin:$PATH"

if [ -e /home/ecomaz/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ecomaz/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# Wasmer
export WASMER_DIR="/home/arschles/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
