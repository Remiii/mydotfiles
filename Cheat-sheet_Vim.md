# Cheat sheet Vim

A collection of commands / shortcuts for VIM. This file contains general shortcuts and personal shortcuts defined by plugins and my vimrc file (https://github.com/Remiii/mydotfiles).

## GENERAL

### CURSOR MOVEMENT

```bash
h                   move left<br />
j                   move down<br />
k                   move up<br />
l                   move right<br />
w                   jump by start of words (punctuation considered words)<br />
W                   jump by words (spaces separate words)<br />
e                   jump to end of words (punctuation considered words)<br />
E                   jump to end of words (no punctuation)<br />
b                   jump backward by words (punctuation considered words)<br />
B                   jump backward by words (no punctuation)<br />
ge                  jump backward to end of words<br />
0                   (zero) start of line<br />
^                   first non-blank character of line<br />
$                   end of line<br />
-                   move line upwards, on the first non blank character<br />
+                   move line downwards, on the first non blank character<br />
<enter>             move line downwards, on the first non blank character<br />
gg                  go to first line<br />
G                   go to last line<br />
nG                  go To line n<br />
:n                  go To line n<br />
)                   move the cursor forward to the next sentence.<br />
(                   move the cursor backward by a sentence.<br />
{                   move the cursor a paragraph backwards<br />
}                   move the cursor a paragraph forwards<br />
]]                  move the cursor a section forwards or to the next {<br />
[[                  move the cursor a section backwards or the previous {<br />
CTRL-f              move the cursor forward by a screen of text<br />
CTRL-b              move the cursor backward by a screen of text<br />
CTRL-u              move the cursor up by half a screen<br />
CTRL-d              move the cursor down by half a screen<br />
H                   move the cursor to the top of the screen.<br />
M                   move the cursor to the middle of the screen.<br />
L                   move the cursor to the bottom of the screen.<br />
fx                  search line forward for 'x'<br />
Fx                  search line backward for 'x'<br />
tx                  search line forward before 'x'<br />
Tx                  search line backward before 'x'}]]})<br />
```

### INSERT MODE

```bash
i                   start insert mode at cursor<br />
I                   insert at the beginning of the line<br />
a                   append after the cursor<br />
A                   append at the end of the line<br />
o                   open (append) blank line below current line<br />
O                   open blank line above current line<br />
Esc                 exit insert mode<br />
```

### EDITING

```bash
r                   replace a single character (does not use insert mode)<br />
R                   enter Insert mode, replacing characters rather than inserting<br />
J                   join line below to the current one<br />
cc                  change (replace) an entire line<br />
cw                  change (replace) to the end of word<br />
c$                  change (replace) to the end of line<br />
s                   delete character at cursor and substitute text<br />
S                   delete line at cursor and substitute text (same as cc)<br />
xp                  transpose two letters (delete and paste, technically)<br />
u                   undo<br />
CTRL-r              redo<br />
.                   repeat last command<br />
~                   switch case<br />
g~iw                switch case of current word<br />
gUiw                make current word uppercase<br />
guiw                make current word lowercase<br />
gU$                 make uppercase until end of line<br />
gu$                 make lowercase until end of line<br />
>>                  indent line one column to right<br />
<<                  indent line one column to left<br />
==                  auto-indent current line<br />
ddp                 swap current line with next<br />
ddkp                swap current line with previous<br />
:%retab             fix spaces / tabs issues in whole file<br />
:r [name]           insert the file [name] below the cursor.<br />
:r !{cmd}           execute {cmd} and insert its standard output below the cursor.<br />
```

### DELETING TEXT

```bash
x                   delete current character<br />
X                   delete previous character<br />
dw                  delete the current word<br />
dd                  delete (cut) a line<br />
D                   delete from cursor to end of line<br />
:[range]d           delete [range] lines<br />
```

### COPYING AND MOVING TEXT

```bash
yw                  yank word<br />
yy                  yank (copy) a line<br />
2yy                 yank 2 lines<br />
y$                  yank to end of line<br />
p                   put (paste) the clipboard after cursor/current line<br />
P                   put (paste) before cursor/current line<br />
:set paste          avoid unexpected effects in pasting<br />
<br />
:registers          display the contents of all registers<br />
"xyw                yank word into register x<br />
"xyy                yank line into register x<br />
:[range]y x         yank [range] lines into register x<br />
"xp                 put the text from register x after the cursor<br />
"xP                 put the text from register x before the cursor<br />
"xgp                just like "p", but leave the cursor just after the new text<br />
"xgP                just like "P", but leave the cursor just after the new text<br />
:[line]put x        put the text from register x after [line]<br />
```

### MACROS

```bash
qa                  start recording macro 'a'<br />
q                   end recording macro<br />
@a                  replay macro 'a'<br />
@:                  replay last command<br />
```

### VISUAL MODE

```bash
v                   start visual mode, mark lines, then do command (such as y-yank)<br />
V                   start linewise visual mode<br />
o                   move to other end of marked area<br />
U                   upper case of marked area<br />
CTRL-v              start visual block mode<br />
O                   move to other corner of block<br />
aw                  mark a word<br />
ab                  a () block (with braces)<br />
ab                  a {} block (with brackets)<br />
ib                  inner () block<br />
ib                  inner {} block<br />
Esc                 exit visual mode<br />
```

### Visual mode commands

```bash
>                   shift right<br />
<                   shift left<br />
c                   change (replace) marked text<br />
y                   yank (copy) marked text<br />
d                   delete marked text<br />
~                   switch case<br />
```

### SPELLING

```bash
]s                  next misspelled word<br />
[s                  previous misspelled word<br />
zg                  add word to wordlist<br />
zug                 undo last add word<br />
z=                  suggest word<br />
```

### EXITING

```bash
:q                  quit Vim. This fails when changes have been made.<br />
:q!                 quit without writing.<br />
:cq                 quit always, without writing.<br />
:wq                 write the current file and exit.<br />
:wq!                write the current file and exit always.<br />
:wq {file}          write to {file}. Exit if not editing the last<br />
:wq! {file}         write to {file} and exit always.<br />
:[range]wq[!]       same as above, but only write the lines in [range].<br />
ZZ                  write current file, if modified, and exit.<br />
ZQ                  quit current file and exit (same as ":q!").<br />
<br />
### SEARCH/REPLACE<br />
<br />
/pattern                    search for pattern<br />
?pattern                    search backward for pattern<br />
n                           repeat search in same direction<br />
N                           repeat search in opposite direction<br />
*                           search forward, word under cursor<br />
#                           search backward, word under cursor<br />
:%s/old/new/g               replace all old with new throughout file<br />
:%s/old/new/gc              replace all old with new throughout file with confirmation<br />
:argdo %s/old/new/gc | wq   open multiple files and run this command to replace old <br />
                            with new in every file with confirmation, save and quit<br />
```

### MULTIPLE FILES

```bash
:e filename         edit a file in a new buffer<br />
:tabe filename      edit a file in a new tab (Vim7, gVim)<br />
:ls                 list all buffers<br />
:bn                 go to next buffer<br />
:bp                 go to previous buffer<br />
:bd                 delete a buffer (close a file)<br />
:b1                 show buffer 1<br />
:b vimrc            show buffer whose filename begins with "vimrc"<br />
```

### WINDOWS

```bash
:sp f               split open f<br />
:vsp f              vsplit open f<br />
CTRL-w s            split windows<br />
CTRL-w w            switch between windows<br />
CTRL-w q            quit a window<br />
CTRL-w v            split windows vertically<br />
CTRL-w x            swap windows<br />
CTRL-w h            left window<br />
CTRL-w j            down window<br />
CTRL-w k            up window<br />
CTRL-w l            right window<br />
CTRL-w +            larger window<br />
CTRL-w -            smaller window<br />
CTRL-w =            equal window<br />
CTRL-w o            close other windows<br />
```

### QUICKFIX WINDOW

```bash
copen               open quickfix window<br />
cclose              close quickfix window<br />
cc [nr]             display error [nr]<br />
cfirst              display the first error<br />
clast               display the last error<br />
[count]cn           display [count] next error<br />
[count]cp           display [count] previous error<br />
```

### PROGRAMMING

```bash
%                   show matching brace, bracket, or parenthese<br />
gf                  edit the file whose name is under or after the cursor<br />
gd                  when the cursor is on a local variable or function, jump to its declaration<br />
''                  return to the line where the cursor was before the latest jump<br />
gi                  return to insert mode where you inserted text the last time<br />
CTRL-o              move to previous position you were at<br />
CTRL-i              move to more recent position you were at]<br />
```

## PLUGINS

### Command-t
