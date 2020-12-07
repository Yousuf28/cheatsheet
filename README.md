# cheatsheet

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


## Git

#### git pushing to remote branch

- [How to push git branch to remote](https://devconnected.com/how-to-push-git-branch-to-remote/)

```
git push -u origin localBranch:remoteBranch
````
## R version

- [How to use `ln -s` to change between R Versions on Mac?](https://stackoverflow.com/questions/56481250/how-to-use-ln-s-to-change-between-r-versions-on-mac)
