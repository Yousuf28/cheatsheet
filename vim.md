

put in .vimrc file  
```
set relativenumber
set numberwidth=2
set cpoptions+=n
inoremap kj <esc>
vnoremap kj <esc>
syntax enable
colorscheme monokai
```

```mkdir ~/.vim/colors```  
if directory not exist. then  
 [download monokai](https://github.com/sickill/vim-monokai)    
 and move to colors  directory.    
 [cobalt](https://github.com/gkjgh/cobalt)  
 [sublime monokai](https://github.com/ErichDonGubler/vim-sublime-monokai)  

[initial version copied from here](https://github.com/theicfire/vimsheet/blob/gh-pages/index.md)  

# A Great Vim Cheat Sheet

[vim_cheatsheet](https://vim.rtorr.com/)  
[vim_cheatsheet](https://vimsheet.com/)  
[https://devhints.io/](https://devhints.io)  

[vscode vim](https://github.com/VSCodeVim/Vim)

[vim in the browser_ vimium](https://github.com/philc/vimium)  

## Essentials

### Cursor movement (Normal/Visual Mode)

- `h` `j` `k` `l` - Arrow keys
- `w` / `b` - Next/previous word
- `e` / `ge` - Next/previous __end__ of word
- `0` / `$` - Start/End of line
- `^` - First non-blank character of line (same as `0w`)

### Editing text

- `i` / __`a`__ - Start insert mode at/ __after__ cursor
- `I` / __`A`__ - Start insert mode at the beginning/__end__ of the line
- __`o`__ / `O` - Add blank line __below__/above current line
- `Esc` or `Ctrl+[` - Exit insert mode
- `d` - Delete
- `dd` - Delete line

### Operators

- Operators also work in Visual Mode
- `d` - Deletes from the cursor to the movement location
- `c` - Deletes from the cursor to the movement location, then starts insert mode
- `y` - Copy from the cursor to the movement location
- `>` - Indent one level
- `<` - Unindent one level
- You can also combine operators with motions. Ex: `d$` deletes from the cursor to the end of the line.

### Marking text (visual mode)

- `v` - Start visual mode
- `V` - Start linewise visual mode
- `Ctrl+v` - Start visual block mode
- `Esc` or `Ctrl+[` - Exit visual mode
###### multicursor in block mode
- `Ctrl+v` -visual block, and then up or down give multicursor, with shift+i (I) insert mode and  type    

### Clipboard

- `yy` - Yank (copy) a line
- `p` - Paste after cursor
- `P` - Paste before cursor
- `dd` - Delete (cut) a line
- `x` - Delete (cut) current character
- `X` - Delete (cut) previous character
- `d` / `c` - By default, these copy the deleted text

#### delete
- [link](https://github.com/tsironis/vim-cheat/blob/master/cheatsheet.md)  
__ci(xyz[Esc]__ - This is a weird one. Here, the 'i' does not mean insert mode. Instead it means __inside the parenthesis__. So this sequence cuts the text inside parenthesis you're standing in and replaces it with "xyz". It also works inside square and figure brackets -- just do ci[ or ci{ correspondingly. Naturally, you can do di (if you just want to delete all text without typing anything. You can also do a instead of i if you want to delete the parentheses as well and not just text inside them.  

- `de` - Delete everything till the end of the word 
- `dt.` - delete until next dot .
- `diw` - to delete the current word
- `capital D` - (take a deep breath) Deletes the rest of the line to the right of the cursor
- `di(` - to delete within (). akks (aksalsk) alks -> akks () alks
- `di{` - to delete within  {}
- `di[` - to delete within  []
- `di"` - to delete the text between the quotes ""
- `dab` - "delete arounb brackets" []
- `da[` - delete around bracket [], da( and da{ for other. so it delete with paren aks (alksj) aak -> aks  aak
- `daB` for around curly brackets, {}, t for xml type tags, combinations with normal commands are as expected cib/yaB/dit/vat etc
- `ci(` - delete and insert cursor
- `ci{`
- `ci[`
- `vi(` select in visual mode  
- __summary__ `di(` delete inside text,  `ci(` delete inside text and insert mode. `da(` delete inside text +  () , `ca(` delete inside text+ () and insert mode.  
- `vi(` - visually select inside (), `va(` select text+()  
- `yi(` -  copy inside () and `ya(` copy inside text + ()    

- [see also vim surround](https://github.com/tpope/vim-surround)
- [emacs evil-surround](https://github.com/emacs-evil/evil-surround)

- some text > visually select `some text` > `S"` (capital S) > "some text"
- some text > cursor on some > `ysiw"` > "some" text
- "some text" > cursor inside > `cs"'` > 'some text'  
- "some text" > cursor inside > `cs"`( > (some text)
- "some text" > cursor inside > `ds"` > some text
- some text > cursor in some > `ys2e"` > "some text" 


#### faq
How to duplicate a whole line in Vim?
- yy or Y copy the line and p paste the line down and P(upper) paste above current line
-  2yy can be used to copy 2 lines (and for any other n) 
- dd or D delete the line and  p paste the line

### Exiting

- `:w` - Write (save) the file, but don't quit
- `:wq` - Write (save) and quit
- `:q` - Quit (fails if anything has changed)
- `:q!` - Quit and throw away changes

### Search/Replace

- `/pattern` - Search for pattern
- `?pattern` - Search backward for pattern
- `n` - Repeat search in same direction
- `N` - Repeat search in opposite direction
- `:%s/old/new/g` - Replace all old with new throughout file ([gn](http://vimcasts.org/episodes/operating-on-search-matches-using-gn/) is better though)
- `:%s/old/new/gc` - Replace all old with new throughout file with confirmations
- visual selection `:s/old/new/gc`
- `:noh` - To turn off highlighting until the next search
- `q/` - show recent search term
- `*` - forward search word under cursor (very helpful)
- `#` - backword search word under cursor 


### General

- `u` - Undo
- `Ctrl+r` - Redo

## Advanced

### Cursor movement

- `Ctrl+d` - Move down half a page
- `Ctrl+u` - Move up half a page
- `Ctrl+b` - Move up whole page
- `Ctrl+e` - scroll down by line
- `Ctrl+y` - scroll up by line
- `}` - Go forward by paragraph (the next blank line)
- `{` - Go backward by paragraph (the next blank line)
- __`gg`__ - Go to the top of the page
- __`G`__ - Go the bottom of the page
- `: [num] [enter]` - Go to that line in the document
- `ctrl+e / ctrl+y` - Scroll down/up one line      
- [stackoverflow](https://stackoverflow.com/questions/3458689/how-to-move-screen-without-moving-cursor-in-vim/58326724#58326724)  
<kbd>z</kbd> <kbd>t</kbd> ...or... <kbd>z</kbd> <kbd>enter</kbd>   -->  moves current line to top of screen  
<kbd>z</kbd> <kbd>z</kbd> ...or... <kbd>z</kbd> <kbd>.</kbd>  -->  moves current line to center of screen  
<kbd>z</kbd> <kbd>b</kbd> ...or... <kbd>z</kbd> <kbd>-</kbd>   -->  moves current line to bottom  
For what it's worth, <kbd>z</kbd><kbd>.</kbd> avoids the danger of saving and closing Vi by accidentally typing      
<kbd>Z</kbd><kbd>Z</kbd> if the caps-lock is on.  

### Character search

- __`f [char]`__ - __Move forward to the given char__
- `F [char]` - Move backward to the given char
- `t [char]` - Move forward to before the given char
- `T [char]` - Move backward to before the given char
- `;` / `,` - Repeat search forwards/backwards

### Editing text

- `J` - Join line below to the current one
- `r [char]` - Replace a single character with the specified char (does not use Insert mode)

### Visual mode

- `O` - Move to other corner of block
- `o` - Move to other end of marked area

### File Tabs

- `:e filename` - Edit a file
- `:tabe` - Make a new tab
- __`gt`__ - __Go to the next tab__
- `gT` - Go to the previous tab
- __`:vsp`__ - __Vertically split windows__
- __`:split`__  - __horizontally split__
- `ctrl+ws` - Split windows horizontally
- `ctrl+wv` - Split windows vertically
- `ctrl+ww` - Switch between windows
- `ctrl+wq` - Quit a window

### Marks
- ``` backtick will set mark at the point 
- `'`  single quote set mark at line level
- Marks allow you to jump to designated points in your code.
- `m{a-z}` - Set mark {a-z} at cursor position
- A capital mark {A-Z} sets a global mark and will work between files
- `'{a-z}` - Move the cursor to the start of the line where the mark was set
- `''` - Go back to the previous jump location
- `'.` where last changed occured
- `'[` jump to previously changed or yanked text
- [mark](https://vim.fandom.com/wiki/Using_marks "mark")
- [marks and jumps](https://www.linux.com/news/vim-tips-moving-around-using-marks-and-jumps/)

### macros

- `q{a-z}`  record macro in a-z character
- `q` to stop
- `@{a-z}` play macro
- `@@` play last macro

### register
- `"{a-z}motion` to copy/yank/change/delete into letter
- `"{a-z}p` to paste
- `"ayiw` 
- `"a` tells Vim that the next action (delete / change / yank) will be stored in register a.  
- `yiw` yanks the word.
- To get the text from register a, run `"ap`

### Text Objects

- Say you have `def (arg1, arg2, arg3)`, where your cursor is somewhere in the middle of the parenthesis.
- `di(` deletes everything between the parenthesis. That says "change everything inside the nearest parenthesis". Without text objects, you would need to do `T(dt)`.
- [Learn more](http://blog.carbonfive.com/2011/10/17/vim-text-objects-the-definitive-guide/)

### General

- `.` - Repeat last command
- `Ctrl+r + 0` in insert mode inserts the last yanked text (or in command mode)
- `gv` - reselect (select last selected block of text, from visual mode)
- `%` - jumps between matching `()` or `{}`

# Making VIM actually useful

Vim is quite unpleasant out of the box. It's an arcane experience:

- Autocomplete is missing
- System clipboard is not used
- Act of typing `:w` to save is cumbersome
- Mouse doesn't work
- Management of multiple files is tricky
- Integration with other plugins (like compiler warnings) is challenging
- Repeatedly indenting/unindenting multiple lines is challenging, though possible

It does have a significant strength though: your fingers can stay on the main keyboard keys to do most editing actions. This is faster and more ergonomic. I find that the toughest part about VIM is guiding people towards getting the benefits of VIM without the drawbacks. Here are some ideas on how to go about this.

## Switch caps lock and escape

- I highly recommend you switch the mapping of your caps lock and escape keys. You'll love it, promise! Switching the two keys is platform dependent.

## Visual Studio Code
gb - adds another cursor on the next word it finds which is the same as the word under the cursor.  
gh - equivalent to hovering your mouse over wherever the cursor is. Handy for seeing types and error messages without reaching for the mouse!  

- VSCode is the simplest way to give you a fantastic editor that also gives you the benefits of VIM. Just install [the VIM extension](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim).
- I made a [few slight changes](https://gist.github.com/theicfire/dc3f7f8c9a19467643a58dff22eb00d9) which improved the experience for me.

## Configure native VIM

For all the given limitations, you'll need to find a solution. You can either solve the issues one by one, or you can use a reference .vimrc settings file that fix most of the issues out-of-the-box.

- [My .vimrc file](https://github.com/theicfire/dotfiles/blob/master/vim/.vimrc) could be a good starting point. Honestly, it's a bit old and not the best. I now use VSCode mainly so I haven't kept a great vimrc.

### Using the system clipboard

- `"+y` copy a selection to the system clipboard
- `"+p` paste from the system clipboard
- If this doesn't work, it’s probably because Vim was not built with the system clipboard option. To check, run `vim --version` and see if `+clipboard` exists. If it says `-clipboard`, you will not be able to copy from outside of Vim.
  - For Mac users, homebrew install Vim with the clipboard option. Install homebrew and then run `brew install vim`.
    - then move the old Vim binary: `$ mv /usr/bin/vim /usr/bin/vimold`
    - restart your terminal and you should see `vim --version` now with `+clipboard`

## Sublime Text

- Another option is to use Vintageous in Sublime Text (version 3). This gives you Vim mode inside Sublime. I suggest this (or a similar setup with the Atom editor) if you aren't a Vim master. Check out [Advanced Vim](advanced.html) if you are.
- Vintageous is great, but I suggest you change a few settings to make it better.

  - Clone [this repository](https://github.com/theicfire/Vintageous) to `~/.config/sublime-text-3/Packages/Vintageous`, or similar. Then check out the "custom" branch.
    - Alternatively, you can get a more updated Vintageous version by cloning [the official](https://github.com/guillermooo/Vintageous) repository and then copying over [this patch](https://github.com/theicfire/Vintageous/commit/19ff6311b01e3ae259b7eb8e3944687b42ba06ff).
  - Change the user settings (`User/Preferences.sublime-settings`) to include:
    - `"caret_style": "solid"`
    - This will make the cursor not blink, like in Vim.
    - Sublime Text might freeze when you do this. It’s a bug; just restart Sublime Text after changing the file.
  - `ctrl+r` in Vim means "redo". But there is a handy Ctrl + R shortcut in Sublime Text that gives an "outline" of a file. I remapped it to alt+r by putting this in the User keymap
    - `{ "keys": ["alt+r"], "command": "show_overlay", "args": {"overlay": "goto", "text": "@"} },`
  - [Add the ability to toggle Vintageous on and off](https://github.com/guillermooo/Vintageous/wiki/Toggling-Vintageous)
  - Mac users: you will not have the ability to hold down a navigation key (like holding j to go down). To fix this, run the commands specified here: [https://gist.github.com/kconragan/2510186](https://gist.github.com/kconragan/2510186)

- Now you should be able to restart sublime and have a great Vim environment! Sweet Dude.

## Other

I don’t personally use these yet, but I’ve heard other people do!

- `:qa` - Quit all open tabs (thanks Vince Banzon)
- `:wa` - Write all open tabs (thanks Vince Banzon)
- `:wqa` - Write and quit all open tabs (thanks Brian Zick)

## Additional resources

- [Advanced Vim](advanced.html)
- [Practical Vim](http://www.amazon.com/Practical-Vim-Thought-Pragmatic-Programmers/dp/1934356980) is a fantastic resource on many of the useful hidden features of vim.



