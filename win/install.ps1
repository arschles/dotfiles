# install windows terminal
# https://winget.run/pkg/Microsoft/WindowsTerminal
winget install -e --id Microsoft.WindowsTerminal

# install Git CLI
# https://winget.run/pkg/Git/Git
winget install --id Git.Git -e --source winget

# install winget CLI
# https://winget.run/pkg/GitHub/cli
winget install -e --id GitHub.cli

# install tailscale
# https://winget.run/pkg/tailscale/tailscale
winget install -e --id tailscale.tailscale

# install Rust
Invoke-WebRequest https://static.rust-lang.org/rustup/dist/i686-pc-windows-gnu/rustup-init.exe -OutFile rustup-init.exe
Write-Output "Please execute rustup-init.exe to install Rust"

