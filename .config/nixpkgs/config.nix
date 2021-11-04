{
    packageOverrides = pkgs: with pkgs; {
        myPackages = pkgs.buildEnv {
            name = "ecomaz-packages";
            paths = [
                yadm
                mage
                du-dust
                azure-cli
                direnv
                git
                gh
                hugo
                kubernetes-helm
                jq
                # python39
                # cargo
                # rustup
                wget
                dog
                curl
                zsh
                nano
                nodejs
                hivemind
                overmind
                bat
                exa
                lsd
                ripgrep
                duf
                broot
                fzf
                tealdeer
                mdbook
                curlie
                bc
                coreutils
                gdb
                ffmpeg
                emscripten
                silver-searcher
                docker
                # docker-gc
                # docker-ls
                delta
                starship
                go
                golangci-lint
                caddy
                k9s
                thefuck
                fira-code
            ];
        };
    };
}
