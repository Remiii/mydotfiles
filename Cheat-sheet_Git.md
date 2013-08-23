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

## Syncing a fork

```bash
$ git remote add user-branchName https://pathToTheRepo
$ git fetch user-branchName
$ git merge user-branchName/branchName
$ git push
```

```bash
$ git remote add user-branchName https://pathToTheRepo
$ git br
$ git fetch user-branchName
$ git branch user-branchName remote/user-branchName/branchName
$ git br
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
