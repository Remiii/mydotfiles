# mydotfiles by Remiii

## About

mydotfiles

Fork me on GITHUB https://github.com/Remiii/mydotfiles

![Screen shot](https://github.com/Remiii/mydotfiles/tree/master/_documentation/Screen_001.png)

## Install

* Clone the repository

```bash
$git clone git@github.com:Remiii/mydotfiles.git
```

* Initialise submodules (NerdTree, Solarized...)

```bash
$git submodule update --init
```

In order to update submodule : `$git submodule update`

### Install VIM part

* Set VIM Command-t submodule

```bash
$cd vim/.vim/bundle/command-t/ruby/command-t
$ruby extconf.rb
$make
```

Make: use VIM does include Ruby support

See: http://github.com/wincent/Command-T

* Create this link

```bash
$ln -s ~/documents/mydotfiles/vim/pathogen/autoload/ ~/documents/mydotfiles/vim/.vim/autoload
```

* Duplicate every files in the good path (eg. vim/.vimrc in ~/.vimrc)

```bash
$ln -s ~/documents/mydotfiles/vim/.vimrc ~/.vimrc
```

```bash
$ln -s ~/documents/mydotfiles/vim/.vim/ ~/.vim
```

## VIM Part

### Plugin list

#### closetag
#### commad-t
#### delmitmate
#### nerdtree
#### solarized
#### supertab
#### togbar
#### twig

## See also

For more information see this articles:

* http://mirnazim.org/writings/vim-plugins-i-use
* http://stackoverflow.com/questions/3794895/installing-vim-with-ruby-support-ruby
* http://nvie.com/posts/how-i-boosted-my-vim
* https://github.com/groenewege/vimrc

## License

mydotfiles is licensed under the MIT license.

## Author

@Remiii

