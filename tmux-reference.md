# A Ctrl+B Cheat Sheet for Tmux

Taken from [Howtogeek](https://www.howtogeek.com/671422/how-to-use-tmux-on-linux-and-why-its-better-than-screen/)

**Fuller cheat sheet [here](http://tmuxcheatsheet.com/)**

## Session Commands

- S: List sessions.
- $: Rename current session.
- D: Detach current session.
- Ctrl+B, and then ?: Display Help page in tmux.

## Window Commands

- C: Create a new window.
- ,: Rename the current window.
- W: List the windows.
- N: Move to the next window.
- P: Move to the previous window.
- 0 to 9: Move to the window number specified.

## Pane Commands

- %: Create a horizontal split.
- “: Create a vertical split.
- H or Left Arrow: Move to the pane on the left.
- I or Right Arrow: Move to the pane on the right.
- J or Down Arrow: Move to the pane below.
- K or Up Arrow: Move to the pane above.
- Q: Briefly show pane numbers.
- O: Move through panes in order. Each press takes you to the next, until you loop through all of them.
- }: Swap the position of the current pane with the next.
- {: Swap the position of the current pane with the previous.
- X: Close the current pane.
