# Neovim-Config
Brand new Neovim Config

## Step 1

Install Vim-Plug

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Step 2

Clone the repo into ~/.config/nvim


## Step 3

Open Neovim and run `vim-plug`

```
:PlugInstall
```

## Step 4

Modify the `leader`, `mappings` to your liking inside `init.vim`.

## Step 5

Make sure the LSPs are set up ( I use pyright, gopls, rust-analyzer etc .. )


