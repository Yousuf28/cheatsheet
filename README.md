# cheatsheet


## R tutorial

- [R Tutorial and tips](https://github.com/Yousuf28/R_tutorial/blob/master/README.md)

# Terminal

## 

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

Then commit reverse diff of the bad changes  
```git commit -m "Partially revert <sha1>..."```  

Finally the reverted GOOD changes (which have been unstaged by the reset command) are still in the working tree.   
They need to be cleaned up. If no other uncommitted changes are left in the working tree, this can be done by  
```git reset --hard```



__config local user for specific repo__  
go to the repository directory  
``` git config user.name "Yousuf Ali" ```  
``` git config user.email "yousuf.pharma@gmail.com" ```  

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

## R version

- [How to use `ln -s` to change between R Versions on Mac?](https://stackoverflow.com/questions/56481250/how-to-use-ln-s-to-change-between-r-versions-on-mac)
