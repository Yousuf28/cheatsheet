# cheatsheet

[different cheatsheet](https://devhints.io)  

# vim  
[My vim cheatsheet](https://github.com/Yousuf28/cheatsheet/blob/master/vim.md)  
[vim_cheatsheet](https://vim.rtorr.com/)  
[vim_cheatsheet](https://vimsheet.com/)  
[https://devhints.io/](https://devhints.io)  

[vim in the browser_ vimium](https://github.com/philc/vimium)  

## terminal keyboard shortcut

[my vscode/terminal navigation shortcut](https://github.com/Yousuf28/cheatsheet/blob/master/terminal/terminal.md)  
[vscode for windows](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf)
## git cheatsheet
[My git guide](https://github.com/Yousuf28/cheatsheet/blob/master/gitGuide.md)  

## Docker 
- [Docker cheatsheet](https://github.com/Yousuf28/dockercheatsheets)

## R tutorial

- [R Tutorial and tips](https://github.com/Yousuf28/R_tutorial/blob/master/README.md)

# Terminal

### terminal promp generator
- [link](https://bashrcgenerator.com/)  
first create the PS1 variable and copy to .bashrc file.   
add   
```
if [ -r ~/.profile ]; then . ~/.profile; fi
case "$-" in *i*) if [ -r ~/.bashrc ]; then . ~/.bashrc; fi;; esac
```  

to .bash_profile file.  
good starting point could be   
```
export PS1="\[\033[38;5;10m\]\u\[$(tput sgr0)\]:\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;11m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\n\\$\[$(tput sgr0)\]"

```
to change terminal cursor block/bar copy in .bashrc file  
- [link](https://stackoverflow.com/questions/4416909/anyway-change-the-cursor-vertical-line-instead-of-a-box)

```
echo -e -n "\x1b[\x35 q" # changes to blinking bar
```





## 

- [How to Archive and Compress Files with the tar and gizp Commands in Linux](https://www.cherryservers.com/blog/how-to-archive-and-compress-files-with-the-tar-and-gizp-commands-in-linux#:~:text=The%20basic%20difference%20between%20the,files%20while%20gzip%20compresses%20files.)

#### make many folder at once

``` 
mkdir chapter_{1..15}
```

#### unzip all zip folders with same name in a directory

```
for file in *.zip; do unzip "$file" -d "${file%.zip}"; done
```

folder1.zip  
folder2.zip  
folder3.zip  
to   
folder1  
folder2  
folder3  

#### find specific type of file
```
find . -name "*.bak" -type f
```
find and delete specific type file

```
find . -name "*.bak" -type f -delete
```

### find all file name containing character and replace with other chararcter
find all | and replace with _  
for forward slash /, use : in pattern.
```
find . -type f -name '*|*'  -execdir bash -c 'mv -- "$1" "${1// |/_}"' bash {} \;
```

### make a alias for directory  
```alias myp='path/directory'```  
__list with hidden file and size__  

```alias ll='ls -lah'``` 

__ linux tree alternative- this only print directory__  
add a in -aR will print hidden directory  

```alias treed="ls -R | grep \":$\" | perl -pe 's/:$//;s/[^-][^\/]*\//    /g;s/^    (\S)/└── \1/;s/(^    |    (?= ))/│   /g;s/    (\S)/└── \1/'"```
__this print all file recursively (not hidden file)__  

```alias treef='find . -not -path "*/\.*" | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'```  
__to include hidden file__ remove -not -path "*/\.*" from line     

```alias treef='find .  | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'```

## Git


- [Git: Merge a Remote branch locally](https://stackoverflow.com/questions/21651185/git-merge-a-remote-branch-locally)  

Whenever I do a merge,   
I get into the branch I want to merge into (e.g.  
```git checkout branch-i-am-working-in```)   
and then do the following:  
```git merge origin/branch-i-want-to-merge-from```  

- [How to push git branch to remote](https://devconnected.com/how-to-push-git-branch-to-remote/)

```
git push -u origin localBranch:remoteBranch
````
pull remote branch to new local branch
 ```
git fetch origin 'remote_branch':'local_branch_name'
 ```
 
track remote branch locally   
When you're starting to work on an existing remote branch  
```
git checkout --track origin/dev
```   
you started a new local branch and now want to publish it on the remote for the first time:  
```
git push -u origin dev  
```  
- [track remote branch](https://www.git-tower.com/learn/git/faq/track-remote-upstream-branch#:~:text=You%20can%20tell%20Git%20to,flag%20with%20%22git%20push%22.)
 
 
How to compare files from two different branches
- [How to compare files from two different branches](https://stackoverflow.com/questions/4099742/how-to-compare-files-from-two-different-branches)

__Apply changes from another branch:__

if the directory is same-  
Currently I am on branch A, and I want to brings some changes from B.  
``` git checkout --patch B file_path_from_B ```  

if the file directory is not same:  
Currently I am on branch A, and I want to brings some changes from B  
``` git diff A:file_path B:file_path > changes.patch ```  
this will save changes from B file to chages.patch file  
I want apply these changes to file in A (A:file_path)  
``` patch file_path_from_A changes.patch```  

__partially revert a specific commit__.  
[reverting-part-of-a-commit-with-git](https://stackoverflow.com/questions/4795600/reverting-part-of-a-commit-with-git)  

First revert the full commit (puts it in index) but don't commit  
```git revert -n <sha1>```    # -n is short for --no-commit    

Then interactively remove the reverted GOOD changes from the index  
```git reset -p```           # -p is short for --patch   
when ask Unstage this hunk? press n, if want to remove this hunk  

Then commit reverse diff of the bad changes  
```git commit -m "Partially revert <sha1>..."```  

Finally the reverted GOOD changes (which have been unstaged by the reset command) are still in the working tree.   
They need to be cleaned up. If no other uncommitted changes are left in the working tree, this can be done by  
```git reset --hard```

_how-can-i-generate-a-git-patch-for-a-specific-commit_  
 - [how-can-i-generate-a-git-patch-for-a-specific-commit](https://stackoverflow.com/questions/6658313/how-can-i-generate-a-git-patch-for-a-specific-commit)  
```git format-patch -1 SHA_number --stdout > patch_file.patch```

- [change-author-name-email](https://www.git-tower.com/learn/git/faq/change-author-name-email)  
__config local user for specific repo__  
go to the repository directory  
``` git config user.name "Yousuf Ali" ```  
``` git config user.email "yousuf.pharma@gmail.com" ```    

__change-author-and-email-of-a-git-commit__   
- [change-author-and-email-of-a-git-commit_ see git filter repo answer](https://stackoverflow.com/questions/2919878/git-rewrite-previous-commit-usernames-and-emails) 

```
git-filter-repo --name-callback 'return name.replace(b"OldName", b"NewName")' --email-callback 'return email.replace(b"old@email.com", b"new@email.com")'
```
``` git push -f origin main```  


__set github and gitlab ssh__  
nano config (create a config file). Then type following. I already created different ssh key for gitlab and github in .ssh directoy.   

Host gitlab  
HostName git.fda.gov  
IdentityFile ~/.ssh/id_rsa  

Host github.com  
HostName ssh.github.com  
IdentityFile ~/.ssh/github_gmail  
Port 443  

[generate new SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)  

[github and gitlab from same machine](https://medium.com/@viviennediegoencarnacion/manage-github-and-gitlab-accounts-on-single-machine-with-ssh-keys-on-mac-43fda49b7c8d)  

- [linux wifi adapter setup](https://www.jilaxzone.com/2022/09/06/heres-how-to-enable-realtek-rtl8188ftv-wi-fi-adapter-on-linux-ubuntu-beginner-friendly-guide/)
- 
## R version

- [How to use `ln -s` to change between R Versions on Mac?](https://stackoverflow.com/questions/56481250/how-to-use-ln-s-to-change-between-r-versions-on-mac)
