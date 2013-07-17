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

### Remove remote branch (on Github for example)

```bash
$ git push --delete origin branchName
```

## Syncing a fork

```bash
git remote add upstream-branchName https://pathToTheRepo
git fetch upstream-branchName
git merge upstream-branchName/branchName
git push
```

## Tags

### Create a tag
```bash
$ git tag -a tagName 
```

### Push a tag
```bash
$ git push --tags 
```

