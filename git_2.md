# Git Everyday Commands Cheatsheet

## Status & History

| Command | Description |
|---|---|
| `git status` | Show staged, unstaged, and untracked files |
| `git status -s` | Show compact status |
| `git status -sb` | Show compact status + branch |
| `git log` | Show commit history |
| `git log --oneline` | Show compact commit history |
| `git log -5` | Show last 5 commits |
| `git log --name-status` | Show commits + changed filenames + A/M/D/R |
| `git log --stat` | Show commits + change statistics |
| `git log -p` | Show commits + exact code changes |
| `git log --graph --oneline --all` | Visual history across all branches |
| `git log -- file.txt` | Show history of one file |
| `git log -p -- file.txt` | Show exact changes to one file |
| `git log --diff-filter=A -- file.txt` | Find when a file was added |
| `git ls-files` | List all tracked files |

## Diff — See What Changed

| Command | Description |
|---|---|
| `git diff` | Show unstaged changes |
| `git diff --stat` | Show summary of unstaged changes |
| `git diff --name-only` | Show names of changed files |
| `git diff --name-status` | Show changed files + M/A/D status |
| `git diff --staged` | Show staged changes |
| `git diff --cached` | Same as `--staged` |
| `git diff HEAD` | Show all staged + unstaged changes |
| `git diff file.txt` | Show unstaged changes to one file |
| `git diff --staged file.txt` | Show staged changes to one file |
| `git diff commit1 commit2` | Compare two commits |

### Important distinction

```text id="r7wrx9"
git diff
    Working Directory ↔ Staging Area

git diff --staged
    Staging Area ↔ Last Commit

git diff HEAD
    Working Directory ↔ Last Commit
```

## Add — Stage Changes

| Command | Description |
|---|---|
| `git add file.txt` | Stage one file |
| `git add .` | Stage changes under current directory |
| `git add -A` | Stage all changes in repository |
| `git add -u` | Stage modified/deleted tracked files |
| `git add -p` | Interactively choose changes to stage |

`git add -p` is especially useful when one file contains several changes but you only want some of them in the next commit.

## Commit

| Command | Description |
|---|---|
| `git commit` | Commit staged changes; open editor for message |
| `git commit -m "message"` | Commit with message |
| `git commit -am "message"` | Stage modified/deleted tracked files and commit |
| `git commit --amend` | Modify the most recent commit |
| `git commit --amend --no-edit` | Add changes to last commit without changing message |

> `git commit -am` does **not** include new untracked files.

You still need:

```bash id="4n84kk"
git add new-file.txt
```

## Restore — Undo File Changes

| Command | Description |
|---|---|
| `git restore file.txt` | Discard unstaged changes to file |
| `git restore .` | Discard unstaged changes in current directory |
| `git restore --staged file.txt` | Unstage file but keep your changes |
| `git restore --staged .` | Unstage everything |
| `git restore --source=HEAD file.txt` | Restore file from last commit |

### Easy way to remember

```text id="9mds72"
git restore file.txt
        ↓
Throw away working-directory changes

git restore --staged file.txt
        ↓
Remove from staging, KEEP changes
```

## Reset — Move/Undo Commits

| Command | Description |
|---|---|
| `git reset HEAD~1` | Undo last commit; keep changes unstaged |
| `git reset --soft HEAD~1` | Undo last commit; keep changes staged |
| `git reset --mixed HEAD~1` | Undo last commit; keep changes unstaged |
| `git reset --hard HEAD~1` | Undo last commit AND discard changes |
| `git reset --hard HEAD` | Discard staged and unstaged tracked changes |

### Reset modes

```text id="lbg7yi"
--soft
   ↓
Commit removed
Changes STAY staged

--mixed
   ↓
Commit removed
Changes STAY, but unstaged

--hard
   ↓
Commit removed
Changes DISCARDED
```

⚠️ Be especially careful with `--hard`.

## Remove Files

| Command | Description |
|---|---|
| `git rm file.txt` | Delete file and stage deletion |
| `git rm --cached file.txt` | Stop tracking file but keep local copy |
| `git rm -r folder/` | Delete tracked directory and stage deletion |

A common use:

```bash id="9ozm2w"
git rm --cached config.env
```

Then add it to `.gitignore` if you no longer want Git tracking it.

## Branches

| Command | Description |
|---|---|
| `git branch` | List local branches |
| `git branch -a` | List local + remote branches |
| `git branch new-feature` | Create branch |
| `git switch new-feature` | Switch branch |
| `git switch -c new-feature` | Create and switch to branch |
| `git branch -d new-feature` | Delete merged branch |
| `git branch -D new-feature` | Force-delete branch |

## Remote / Sync

| Command | Description |
|---|---|
| `git remote -v` | Show configured remotes |
| `git fetch` | Download remote changes without merging |
| `git pull` | Fetch + integrate remote changes |
| `git push` | Push commits to remote |
| `git push -u origin branch` | Push branch and set upstream |

## Stash

| Command | Description |
|---|---|
| `git stash` | Temporarily save tracked changes |
| `git stash -u` | Stash changes including untracked files |
| `git stash list` | List stashes |
| `git stash pop` | Restore latest stash and remove it |
| `git stash apply` | Restore latest stash but keep it |
| `git stash drop` | Delete latest stash |

## ⭐ Everyday Workflow

| Command | Description |
|---|---|
| `git status -sb` | See current state |
| `git diff` | Review unstaged changes |
| `git add file.txt` | Stage desired file |
| `git diff --staged` | Review exactly what you're about to commit |
| `git commit -m "message"` | Commit staged changes |
| `git log --name-status -5` | Review recent history |
| `git push` | Send commits to remote |

## ⭐ Undo Cheatsheet

| I want to... | Command |
|---|---|
| Unstage a file | `git restore --staged file.txt` |
| Discard unstaged file changes | `git restore file.txt` |
| Fix last commit message | `git commit --amend` |
| Add forgotten file to last commit | `git add file.txt` then `git commit --amend --no-edit` |
| Undo last commit, keep changes staged | `git reset --soft HEAD~1` |
| Undo last commit, keep changes unstaged | `git reset HEAD~1` |
| Completely discard last commit | `git reset --hard HEAD~1` |

## Mental Model

```text id="f4a7cz"
Working Directory
      │
      │ git add
      ▼
Staging Area
      │
      │ git commit
      ▼
Local Repository
      │
      │ git push
      ▼
Remote Repository


git diff
Working Directory → Staging Area

git diff --staged
Staging Area → Last Commit

git status
Where am I right now?

git log
What happened before?
```