" Chars2HTML:   Plugin to convert special chars in texts to HTML. Inspired by h�tml_da.vim
" Maintainer:   Jens Juul Christensen <jens@jjc.dk>
" Last Change:  20130522
" Version:      1.2
" License:      GPL (Gnu Public License)
"
" Usage:
" This plugin will convert between characters and their HTML "&xxxxxx;" entity. Its a
" rewrite of html_da.vim, this plugin can be used on all filetypes and
" contains more special characters and their HTML encoding. Nice plugin if you
" often copy text to use as HTML, with special european letters(ISO-8859-1),
" embedded in various programming languages.
"
" Installation:
" Put this file in your plugin directory ~/.vim/plugin.
" Put a mapping in your .vimrc to call ConvertChars2HTML and ConvertHtml2Chars like this:
" map ,ch :ConvertChars2Html<CR>
" map ,hc :ConvertHtml2Chars<CR>

command! -nargs=0 ConvertChars2Html call s:Char2Html("normal")
command! -nargs=0 ConvertHtml2Chars call s:Char2Html("reverse")

function s:Char2Html(what)
    let s:line = line(".")
    let s:column = col(".")
    let s:save_report = &report
    set report=99999

    if a:what == "normal"
        %s/�/\&aelig;/eIg
        %s/�/\&AElig;/eIg
        %s/�/\&oslash;/eIg
        %s/�/\&Oslash;/eIg
        %s/�/\&aring;/eIg
        %s/�/\&Aring;/eIg
        %s/�/\&aelig;/eIg
        %s/�/\&Agrave;/eIg
        %s/�/\&agrave;/eIg
        %s/�/\&Aacute;/eIg
        %s/�/\&aacute;/eIg
        %s/�/\&Acirc;/eIg
        %s/�/\&acirc;/eIg
        %s/�/\&Atilde;/eIg
        %s/�/\&atilde;/eIg
        %s/�/\&Auml;/eIg
        %s/�/\&auml;/eIg
        %s/�/\&Ccedil;/eIg
        %s/�/\&ccedil;/eIg
        %s/�/\&Egrave;/eIg
        %s/�/\&egrave;/eIg
        %s/�/\&Eacute;/eIg
        %s/�/\&eacute;/eIg
        %s/�/\&Ecirc;/eIg
        %s/�/\&ecirc;/eIg
        %s/�/\&Euml;/eIg
        %s/�/\&euml;/eIg
        %s/�/\&Igrave;/eIg
        %s/�/\&igrave;/eIg
        %s/�/\&Iacute;/eIg
        %s/�/\&iacute;/eIg
        %s/�/\&Icirc;/eIg
        %s/�/\&icirc;/eIg
        %s/�/\&Iuml;/eIg
        %s/�/\&iuml;/eIg
        %s/�/\&micro;/eIg
        %s/�/\&Ntilde;/eIg
        %s/�/\&ntilde;/eIg
        %s/�/\&Ograve;/eIg
        %s/�/\&ograve;/eIg
        %s/�/\&Oacute;/eIg
        %s/�/\&oacute;/eIg
        %s/�/\&Ocirc;/eIg
        %s/�/\&ocirc;/eIg
        %s/�/\&Otilde;/eIg
        %s/�/\&otilde;/eIg
        %s/�/\&Ouml;/eIg
        %s/�/\&ouml;/eIg
        %s/�/\&szlig;/eIg
        %s/�/\&Ugrave;/eIg
        %s/�/\&ugrave;/eIg
        %s/�/\&Uacute;/eIg
        %s/�/\&uacute;/eIg
        %s/�/\&Ucirc;/eIg
        %s/�/\&ucirc;/eIg
        %s/�/\&Uuml;/eIg
        %s/�/\&uuml;/eIg
        %s/�/\&yuml;/eIg
        %s/�/\&iexcl;/eIg
        %s/�/\&iquest;/eIg
    else
        "reverse mode HTML -> CHARS
        "no \& because the & will stay after the substitution
        %s/&aelig;/�/eIg
        %s/&AElig;/�/eIg
        %s/&oslash;/�/eIg
        %s/&Oslash;/�/eIg
        %s/&aring;/�/eIg
        %s/&Aring;/�/eIg
        %s/&aelig;/�/eIg
        %s/&Agrave;/�/eIg
        %s/&agrave;/�/eIg
        %s/&Aacute;/�/eIg
        %s/&aacute;/�/eIg
        %s/&Acirc;/�/eIg
        %s/&acirc;/�/eIg
        %s/&Atilde;/�/eIg
        %s/&atilde;/�/eIg
        %s/&Auml;/�/eIg
        %s/&auml;/�/eIg
        %s/&Ccedil;/�/eIg
        %s/&ccedil;/�/eIg
        %s/&Egrave;/�/eIg
        %s/&egrave;/�/eIg
        %s/&Eacute;/�/eIg
        %s/&eacute;/�/eIg
        %s/&Ecirc;/�/eIg
        %s/&ecirc;/�/eIg
        %s/&Euml;/�/eIg
        %s/&euml;/�/eIg
        %s/&Igrave;/�/eIg
        %s/&igrave;/�/eIg
        %s/&Iacute;/�/eIg
        %s/&iacute/�/eIg
        %s/&Icirc;/�/eIg
        %s/&icirc;/�/eIg
        %s/&Iuml;/�/eIg
        %s/&iuml;/�/eIg
        %s/&micro;/�/eIg
        %s/&Ntilde;/�/eIg
        %s/&ntilde;/�/eIg
        %s/&Ograve;/�/eIg
        %s/&ograve;/�/eIg
        %s/&Oacute;/�/eIg
        %s/&oacute;/�/eIg
        %s/&Ocirc;/�/eIg
        %s/&ocirc;/�/eIg
        %s/&Otilde;/�/eIg
        %s/&otilde;/�/eIg
        %s/&Ouml;/�/eIg
        %s/&ouml;/�/eIg
        %s/&szlig;/�/eIg
        %s/&Ugrave;/�/eIg
        %s/&ugrave;/�/eIg
        %s/&Uacute;/�/eIg
        %s/&uacute;/�/eIg
        %s/&Ucirc;/�/eIg
        %s/&ucirc;/�/eIg
        %s/&Uuml;/�/eIg
        %s/&uuml;/�/eIg
        %s/&yuml;/�/eIg
        %s/&iexcl;/�/eIg
        %s/&iquest;/�/eIg
        %s/&iquest;/�/eIg

        let &report=s:save_report
        unlet s:save_report
        call cursor(s:line,s:column)
        unlet s:line
        unlet s:column
    endif
    endfunction

