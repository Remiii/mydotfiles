# mydotfiles by Remiii

## About

mydotfiles

## Install

* Clone the repository

`$git clone git@github.com:Remiii/mydotfiles.git`

* Initialise submodules (NerdTree, Solarized...)

`$git submodule update --init`

In order to update submodule : `$git submodule update`

* Set VIM Command-t submodule

```bash
$cd vim/.vim/bundle/command-t/ruby/command-t
$ruby extconf.rb
$make
```

Make: use VIM does include Ruby support

See: http://github.com/wincent/Command-T

* Create this link

`$ln -s ~/documents/mydotfiles/vim/pathogen/autoload/ ~/documents/mydotfiles/vim/.vim/autoload`

* Duplicate every files in the good path (eg. vim/.vimrc in ~/.vimrc)

 * Vim Part

`$ln -s ~/documents/mydotfiles/vim/.vimrc ~/.vimrc`<br >
`$ln -s ~/documents/mydotfiles/vim/.vim/ ~/.vim`

## VIM Part

### Plugin list

#### closetag
#### commad-t
#### delmitmate
#### nerdtree
#### solarized
#### supertab
#### togbar

## See also

For more information see this articles:

* http://mirnazim.org/writings/vim-plugins-i-use/
* http://stackoverflow.com/questions/3794895/installing-vim-with-ruby-support-ruby
* http://nvie.com/posts/how-i-boosted-my-vim/i
* url = git@github.com:Remiii/vim-twig.git

## License

mydotfiles is licensed under the MIT license.

## Author

@Remiii

