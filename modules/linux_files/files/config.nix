{
    packageOverrides = pkgs: with pkgs; {
        myPackages = pkgs.buildEnv {
            name = "packages";
            paths = [
                mosh
                act
                mage
                du-dust
                azure-cli
                direnv
                git
                tmux
                gh
                hugo
                kubernetes-helm
                jq
                lazygit
                python39
                wget
                dog
                curl
                zsh
                nano
                nodejs
                hivemind
                overmind
                bat
                lsd
                ripgrep
                duf
                broot
                fzf
                tealdeer
                mdbook
                curlie
                gdb
                ffmpeg
                emscripten
                docker
                docker-gc
                docker-ls
                delta
                starship
                caddy
                k9s
                fira-code
                eza
                asciinema
                procs
                ripgrep
                htop
                hexyl
            ];
        };
    };
}
