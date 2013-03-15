# mydotfiles by Remiii

## About

mydotfiles

Fork me on GITHUB https://github.com/Remiii/mydotfiles

![Screen shot - VIM](https://raw.github.com/Remiii/mydotfiles/master/_documentation/Screen_001.png)<br />
Screen shot of VIM.

![Screen shot - ZSH](https://raw.github.com/Remiii/remiii.zsh-theme/master/_documentation/Screen_001.png)<br />
Screen shot of ZSH.

## Global Install of the Term

### On OSX

#### Install iTerm2

[iTerm2](http://www.iterm2.com/#/section/home)

#### Install new Fonts

[Menlo Powerline fonts](https://gist.github.com/1595572)

#### Install Solarized for iTerm2

[Solarized for iTerm2](https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized) part of the [Solerized project](https://github.com/altercation/solarized).

#### Install Solerized for files

[Solarized for files](https://github.com/seebi/dircolors-solarized)
Marks: think to add config in the Shell config (.zshrc...).

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


### Install ZSH part

#### Create this link

```bash
$ ln -s ~/documents/mydotfiles/zsh/oh-my-zsh/templates/zshrc.zsh-template ~/documents/mydotfiles/zsh/.zshrc
```

#### Custom the file: zsh/oh-my-zsh/templates/zshrc.zsh-template

Update path, theme add plugins and made some customs.

##### Modif path in the file

```bash
ZSH=$HOME/documents/mydotfiles/zsh/oh-my-zsh
```

##### Customize plugins

```bash
plugins=(lol git symfony2 github composer debian gnu-utils brew vagrant)
```

##### Customize to your needs...

```bash
eval `dircolors ~/documents/mydotfiles/zsh/dircolors-solarized/dircolors.256dark`
```

##### Sample

```bash
#Path to your oh-my-zsh configuration.
ZSH=$HOME/documents/mydotfiles/zsh/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="remiii"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(lol git symfony2 github composer debian gnu-utils brew vagrant)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
eval `dircolors ~/documents/mydotfiles/zsh/dircolors-solarized/dircolors.256dark`
alias vma='cd ~/aa;vagrant up;ssh website@127.0.0.1 -p 10022'
```

#### Duplicate every files in the good path (eg. ~/.zshrc)

```bash
$ ln -s ~/documents/mydotfiles/zsh/.zshrc ~/.zshrc
```


### Add remiii.zsh-theme

remiii.zsh-theme (see: [remiii.zsh-theme](https://github.com/Remiii/remiii.zsh-theme)) is based on agnoster.zsh-theme (see: [agnoster.zsh-theme](https://gist.github.com/3712874)).

* Creat this link in order to add remiii.zsh-theme

```bash
ln -s ~/documents/mydotfiles/zsh/remiii.zsh-theme/remiii.zsh-theme ~/documents/mydotfiles/zsh/oh-my-zsh/themes/remiii.zsh-theme
```

* Modif theme in the file: zsh/oh-my-zsh/templates/zshrc.zsh-template in order to add remiii.zsh-theme

```bash
ZSH_THEME="remiii"
```


### Install AWS Cli

* Create this link

```bash
$ ln -s ~/documents/mydotfiles/aws/ ~/.aws
```


## Update

*  submodules (NerdTree, Solarized...)

```bash
$ git submodule update

$ cd toSubmoduleDir
$ git pull
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

## ZSH Part

### [ZSH](http://www.zsh.org)
Official site of ZSH

## See also

### See also Gloabl part

For more information see this articles:
* http://www.iterm2.com
* http://ethanschoonover.com/solarized
* https://github.com/seebi/dircolors-solarized

### See also VIM part

For more information see this articles:

* http://mirnazim.org/writings/vim-plugins-i-use
* http://stackoverflow.com/questions/3794895/installing-vim-with-ruby-support-ruby
* http://nvie.com/posts/how-i-boosted-my-vim
* https://github.com/groenewege/vimrc

### See also ZSH part

For more information see this articles:

* https://github.com/robbyrussell/oh-my-zsh
* https://gist.github.com/3712874

### See also AWS Cli part

For more information see this articles:

* https://github.com/aws/aws-cli

## License

mydotfiles is licensed under the MIT license (see LICENSE.md file).

## Author

@Remiii

