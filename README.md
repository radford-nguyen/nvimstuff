Neovim RC
=========

My neovim rc journey which started with ThePrimeagen's
[Neovim RC From Scratch][1] video.

[1]: https://www.youtube.com/watch?v=w7i4amO_zaE

Installation
------------

Clone into nvim config dir:

```bash
mkdir -p ~/.config/nvim && cd ~/.config/nvim
git clone <this-repo> .
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim .
```

Grab the Packer packages:

- open ~/.config/nvim/lua/rad/packer.lua
- `:so` to "shout-out" the file
- `:PackerSync` to grab the packages

You're good to go
