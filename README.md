# dotvim

My `.vim` directory with my preferred `.vimrc` configurations.

The repository also hosts a bunch of Vim packages I tend to use daily. These
packages are added as submodules to the repository under the directory
`pack/plugins/start`.

To be able to use the packages out-of-the-box, you need to have a recent version
of Vim (`v8+`) installed on your platform. To check whether your Vim
installation supports packages and learn how to use this functionality, please
refer to the documentation by issuing `:help packages` in normal mode.

# How to Use and Adapt the Settings / Packages

If you feel like the repository serves as a nice starting point for your Vim
settings and packages, you can simply clone the repository and start hacking
around with the settings. On Unix-like systems, you can do so by issuing the
following

```bash
# if you already have a `.vim` directory with your settings and packages, make a
# backup of that directory
mv $HOME/.vim $HOME/dotvim-backup
mv $HOME/.vimrc $HOME/vimrc-backup

# clone the repository recursively
git clone --recursive https://github.com/aytekinar/dotvim $HOME/dotvim

# Make symbolic links to the new folder and the `vimrc` file
ln -s $HOME/dotvim $HOME/.vim
ln -s $HOME/dotvim/vimrc $HOME/.vimrc

# Generate the documentation for the packages
cd $HOME/.vim
git submodule foreach vim -c "helptags doc" -c q
```

Happy hacking with your new Vim settings!
