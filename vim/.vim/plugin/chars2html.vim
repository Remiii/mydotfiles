" Chars2HTML:   Plugin to convert special chars in texts to HTML. Inspired by h tml_da.vim
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
        %s/æ/\&aelig;/eIg
        %s/Æ/\&AElig;/eIg
        %s/ø/\&oslash;/eIg
        %s/Ø/\&Oslash;/eIg
        %s/å/\&aring;/eIg
        %s/Å/\&Aring;/eIg
        %s/æ/\&aelig;/eIg
        %s/À/\&Agrave;/eIg
        %s/à/\&agrave;/eIg
        %s/Á/\&Aacute;/eIg
        %s/á/\&aacute;/eIg
        %s/Â/\&Acirc;/eIg
        %s/â/\&acirc;/eIg
        %s/Ã/\&Atilde;/eIg
        %s/ã/\&atilde;/eIg
        %s/Ä/\&Auml;/eIg
        %s/ä/\&auml;/eIg
        %s/Ç/\&Ccedil;/eIg
        %s/ç/\&ccedil;/eIg
        %s/È/\&Egrave;/eIg
        %s/è/\&egrave;/eIg
        %s/É/\&Eacute;/eIg
        %s/é/\&eacute;/eIg
        %s/Ê/\&Ecirc;/eIg
        %s/ê/\&ecirc;/eIg
        %s/Ë/\&Euml;/eIg
        %s/ë/\&euml;/eIg
        %s/Ì/\&Igrave;/eIg
        %s/ì/\&igrave;/eIg
        %s/Í/\&Iacute;/eIg
        %s/í/\&iacute;/eIg
        %s/Î/\&Icirc;/eIg
        %s/î/\&icirc;/eIg
        %s/Ï/\&Iuml;/eIg
        %s/ï/\&iuml;/eIg
        %s/µ/\&micro;/eIg
        %s/Ñ/\&Ntilde;/eIg
        %s/ñ/\&ntilde;/eIg
        %s/Ò/\&Ograve;/eIg
        %s/ò/\&ograve;/eIg
        %s/Ó/\&Oacute;/eIg
        %s/ó/\&oacute;/eIg
        %s/Ô/\&Ocirc;/eIg
        %s/ô/\&ocirc;/eIg
        %s/Õ/\&Otilde;/eIg
        %s/õ/\&otilde;/eIg
        %s/Ö/\&Ouml;/eIg
        %s/ö/\&ouml;/eIg
        %s/ß/\&szlig;/eIg
        %s/Ù/\&Ugrave;/eIg
        %s/ù/\&ugrave;/eIg
        %s/Ú/\&Uacute;/eIg
        %s/ú/\&uacute;/eIg
        %s/Û/\&Ucirc;/eIg
        %s/û/\&ucirc;/eIg
        %s/Ü/\&Uuml;/eIg
        %s/ü/\&uuml;/eIg
        %s/ÿ/\&yuml;/eIg
        %s/¡/\&iexcl;/eIg
        %s/¿/\&iquest;/eIg
    else
        "reverse mode HTML -> CHARS
        "no \& because the & will stay after the substitution
        %s/&aelig;/æ/eIg
        %s/&AElig;/Æ/eIg
        %s/&oslash;/ø/eIg
        %s/&Oslash;/Ø/eIg
        %s/&aring;/å/eIg
        %s/&Aring;/Å/eIg
        %s/&aelig;/æ/eIg
        %s/&Agrave;/À/eIg
        %s/&agrave;/à/eIg
        %s/&Aacute;/Á/eIg
        %s/&aacute;/á/eIg
        %s/&Acirc;/Â/eIg
        %s/&acirc;/â/eIg
        %s/&Atilde;/Ã/eIg
        %s/&atilde;/ã/eIg
        %s/&Auml;/Ä/eIg
        %s/&auml;/ä/eIg
        %s/&Ccedil;/Ç/eIg
        %s/&ccedil;/ç/eIg
        %s/&Egrave;/È/eIg
        %s/&egrave;/è/eIg
        %s/&Eacute;/É/eIg
        %s/&eacute;/é/eIg
        %s/&Ecirc;/Ê/eIg
        %s/&ecirc;/ê/eIg
        %s/&Euml;/Ë/eIg
        %s/&euml;/ë/eIg
        %s/&Igrave;/Ì/eIg
        %s/&igrave;/ì/eIg
        %s/&Iacute;/Í/eIg
        %s/&iacute/í/eIg
        %s/&Icirc;/Î/eIg
        %s/&icirc;/î/eIg
        %s/&Iuml;/Ï/eIg
        %s/&iuml;/ï/eIg
        %s/&micro;/µ/eIg
        %s/&Ntilde;/Ñ/eIg
        %s/&ntilde;/ñ/eIg
        %s/&Ograve;/Ò/eIg
        %s/&ograve;/ò/eIg
        %s/&Oacute;/Ó/eIg
        %s/&oacute;/ó/eIg
        %s/&Ocirc;/Ô/eIg
        %s/&ocirc;/ô/eIg
        %s/&Otilde;/Õ/eIg
        %s/&otilde;/õ/eIg
        %s/&Ouml;/Ö/eIg
        %s/&ouml;/ö/eIg
        %s/&szlig;/ß/eIg
        %s/&Ugrave;/Ù/eIg
        %s/&ugrave;/ù/eIg
        %s/&Uacute;/Ú/eIg
        %s/&uacute;/ú/eIg
        %s/&Ucirc;/Û/eIg
        %s/&ucirc;/û/eIg
        %s/&Uuml;/Ü/eIg
        %s/&uuml;/ü/eIg
        %s/&yuml;/ÿ/eIg
        %s/&iexcl;/¡/eIg
        %s/&iquest;/¿/eIg
        %s/&iquest;/¿/eIg

        let &report=s:save_report
        unlet s:save_report
        call cursor(s:line,s:column)
        unlet s:line
        unlet s:column
    endif
    endfunction

