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


nvim from WSL2
--------------

There is no native clipboard support when running nvim inside a WSL2
container on a windows host.  There are a few ways to set this up;
run `h:clipboard` for more info.

This is how you would set up clipboard using `xclip`, which is already
installed on most distros.

### Install X Server on host

VcXsrv is a common choice for windows.  Install then launch it listening
on port XX.  (You will probably want to save this launch configuration
and set the server to always launch with it on system startup.)

After launching it, we need to allow access to it through the firewall.
Create a firewall rule that allows traffic from the server program,
accepting inbound connections from the following IP range:

- 172.16.0.0/12

This range is the subnet created by WSL for all its containers.

### Set DISPLAY on container

The `$DISPLAY` var needs to be set to the host IP and display port that
you launched the server with.  Here's a handy way to do that in bash:

```bash
set_display() {
    # WSL?
    if [[ "$(< /proc/sys/kernel/osrelease)" == *microsoft* ]]; then
        # replace XX with actual port
        XPORT=XX
        WSL_HOST=$(tail -1 /etc/resolv.conf | cut -d' ' -f2)
        export DISPLAY=${WSL_HOST}:$XPORT
    fi
}

set_display
```

Once this is all complete, you should be able to paste from the system
clipboard into nvim.  If not, run `:checkhealth` to verify clipboard settings.
