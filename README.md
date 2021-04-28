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


## R version

- [How to use `ln -s` to change between R Versions on Mac?](https://stackoverflow.com/questions/56481250/how-to-use-ln-s-to-change-between-r-versions-on-mac)
