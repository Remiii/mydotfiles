# mydotfiles by Remiii

## About

mydotfiles

Fork me on GITHUB https://github.com/Remiii/mydotfiles

![Screen shot](https://raw.github.com/Remiii/mydotfiles/master/_documentation/Screen_001.png)

## Install

* Clone the repository

```bash
$ git clone git@github.com:Remiii/mydotfiles.git
```

* Initialise submodules (NerdTree, Solarized...)

```bash
$ git submodule update --init
```

In order to update submodule : `$git submodule update`

### Install VIM part

* Set VIM Command-t submodule

```bash
$ cd vim/.vim/bundle/command-t/ruby/command-t
$ ruby extconf.rb
$ make
```

Make: use VIM does include Ruby support

See: http://github.com/wincent/Command-T

* Create this link

```bash
$ ln -s ~/documents/mydotfiles/vim/pathogen/autoload/ ~/documents/mydotfiles/vim/.vim/autoload
```

* Duplicate every files in the good path (eg. vim/.vimrc in ~/.vimrc)

```bash
$ ln -s ~/documents/mydotfiles/vim/.vimrc ~/.vimrc
```

```bash
$ ln -s ~/documents/mydotfiles/vim/.vim/ ~/.vim
```

### Install ZSH

* Duplicate every files in the good path (eg. ~/.zshrc)

```bash
$ ln -s ~/documents/mydotfiles/zsh/.zshrc ~/.zshrc
```

## VIM Part

Some info in the Cheat sheet file (see Cheat-sheet_Vim.md).

### Plugin list

#### closetag

#### commad-t

#### [Delmitmate](http://www.vim.org/scripts/script.php?script_id=2754)
Provides auto-balancing and some expansions for parens, quotes, etc.

#### [NerdTree](http://www.vim.org/scripts/script.php?script_id=1658)
A tree explorer plugin for navigating the filesystem.

#### [Solarized](http://ethanschoonover.com/solarized)
Precision colorscheme for the vim text editor.

#### supertab

#### togbar

#### [SnipMate](http://www.vim.org/scripts/script.php?script_id=2540)
TextMate-style snippets for Vim.

#### [twig](https://github.com/Remiii/vim-twig)
Twig syntax highlighting, snipMate, etc.

#### [Vim Commenter](http://www.vim.org/scripts/script.php?script_id=1528)
A plugin that allows for easy commenting of code for many filetypes.

## See also

For more information see this articles:

* http://mirnazim.org/writings/vim-plugins-i-use
* http://stackoverflow.com/questions/3794895/installing-vim-with-ruby-support-ruby
* http://nvie.com/posts/how-i-boosted-my-vim
* https://github.com/groenewege/vimrc

## License

mydotfiles is licensed under the MIT license (see LICENSE.md file).

## Author

@Remiii

