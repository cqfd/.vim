# Installation

## Step One

Clone into `~/.vim`.

## Step Two

Pull in pathogen bundles:

`git submodule init`

`git submodule update`

## Step Three

Symlink `~/.vimrc` to `~/.vim/vimrc`.

`ln -s ~/.vim/vimrc ~/.vimrc`

## Optional Step Four

[Wincent Coluta](https://github.com/wincent)'s Command-T plugin is awesome;
however, it is a bit annoying to install.

Command-T requires a version of vim with Ruby support. Run

`vim --version`

and see if there's a +ruby in the output. If not, you'll need to recompile vim.

Not only that, but in my experience, you'll need to compile vim with support
for Ruby 1.8.7. Command-T does not appear to like 1.9.2.

Assuming you've got vim set up to work with Ruby 1.8.7, run `rake make` inside
the Command-T bundle, and you should be good to go.
