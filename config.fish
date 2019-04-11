# fenv
set fish_function_path $fish_function_path ~/.config/fish/functions/plugin-foreign-env/functions

# amazon
set -x PATH $PATH ~/.toolbox/bin

# rust
source $HOME/.cargo/env

# pipsi
set -x PATH $PATH ~/.local/bin

# editors
set -gx EDITOR neovim

# go
set -x GOROOT ~/.asdf/installs/golang/1.10.2/go
set -x GOPATH ~/go
set -x PATH $PATH ~/go/bin

# aliases
alias e=nvim
alias g=git
alias s=rg
alias gu=gitup
alias bb=brazil-build
alias ls="exa --tree -L=1"
alias tree="exa -T -L 4"
alias tower="gittower"

function musl-build
    docker run -v cargo-cache:/root/.cargo -v "$PWD:/volume" --rm -it clux/muslrust cargo build --release
end

[ -s "~/.jabba/jabba.fish" ]
and source "~/.jabba/jabba.fish"

# nix
set -x PATH $PATH ~/.nix-profile/bin/

source ~/.config/fish/functions/iterm2_shell_integration.fish

# THEME PURE #
set fish_function_path ~/.config/fish/functions/theme-pure/functions/ $fish_function_path
# THEME PURE #
set fish_function_path ~/.config/fish/functions/theme-pure/functions/ $fish_function_path
source ~/.config/fish/functions/theme-pure/conf.d/pure.fish
