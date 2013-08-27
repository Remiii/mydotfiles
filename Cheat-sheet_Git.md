# Cheat-sheet Git

## Checkout branch

### Checkout remote branch (on Github for example)

```bash
$ git checkout -b branchName origin/branchName
```

## Create branch

### Create local branch

```bash
$ git branch branchName
```

### Create remote branch (on Github for example)

```bash
$ git push origin branchName
```

## Remove branch

### Remove local branch

```bash
$ git branch -d branchName 
```

### Remove remote branch of the list

```bash
$ git branch -d -r branchName
```

### Remove remote branch (on Github for example)

```bash
$ git push --delete origin branchName
```

## Syncing a fork from a User (all branches)

```bash
$ git br
$ git remote add user git@github.com:user/repo.git
$ git branch -va
$ git fetch user
$ git br
$ git branch -va
```

```bash
$ git co -b user-branchName remotes/user/repo
```

## Tags

### Create a tag
```bash
$ git tag -a tagName 
```

### Create a tag for a specified commit
```bash
$ git tag -a tagName commitHash
```

### Delete a tag
```bash
$ git tag -d tagName 
```

### Push a tag
```bash
$ git push --tags 
```

## Utils

### Find unmerged branches locally
```bash
$ git branch --no-merged
```
