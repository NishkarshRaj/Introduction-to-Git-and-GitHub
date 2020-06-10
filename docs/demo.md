# Getting started with GitHub - Demonstration

## Tracking a local project using Git VCS

* Initialize the working directory as a Git repository

```
$ git init
$ ls -a
```

* Configure your local system with your GitHub Host credentials

```
$ git config --global user.name "[GitHub/GitLab username]"
```

```
$ git config --global user.email "[GitHub/Gitlab Primary Email]"
```

* Check states of the files present in the working directory

```
$ git status
```

* Add/modify files via command line or via GUI

```
$ git [add/stage] [filename].[extension]
```

* Add all the changed files

```
$ git [add/stage] .
```

* Check in the code to Git version history

```
$ git commit -m "[Commit Message]"
```

* Create a link between local directory and GitHub repository

```
$ git remote add origin [Repository URL]
```

* Push the local commits to remote repository

```
$ git push -u origin master
```

* See the logs of the commit history

```
$ git log
```

#### Commit versus Push Command

* Commits store snapshots with commit id and timestamp of the Git Version

* Push command synchronizes the local commit history with the remote commit history.

## Working on Git projects locally

* Clone the git repository to local machine

```
$ git clone [Repository URL]
```

* See the git commit history locally

```
$ git log
```

## Contributing to Upstream GitHub Projects

![Upstream](img/Upstream2.png)

**1. Fork the repository**

**2. Work locally on the changes**

**2.1 Work on a feature branch**

* Create a new feature branch

```
$ git branch [branch name]
$ git branch
```

* Move from current branch to the destination branch

```
$ git checkout [branch name]
```

* Stage files on the current branch

```
$ git add [files]
```

* Commit the changes as a snapshot

```
$ git commit -m "[Commit Message]"
```

* Check the commit history in terms of branches

```
$ git log --oneline --all --decorate --graph
```

* Push changes from the current branch to our forked repository

```
$ git push -u origin [branch name]
```

**3. Create a Pull Request**

### Synchronize forked repository with upstream repository

* Link the forked repository with the upstream repository.

```
$ git remote -v
$ git remote add upstream [Upstream Repository URL]
```

* Fetch the changes from upstream repository to the forked repository

```
$ git fetch upstream
```

* Merge the fetched changes with the master branch of the repository

```
$ git merge upstream/master
```


* Push the new commit history to forked repository

```
$ git push
```

## Important Miscellaneous Git commands and utilities

* .gitignore

* logs

* diff

* branch

* revert and reset

* merge and rebase

### Learning materials

https://lab.github.com/githubtraining/managing-merge-conflicts

https://lab.github.com/githubtraining/paths/first-day-on-github

https://lab.github.com/githubtraining/paths/first-week-on-github

## Important Links and References

[Introduction to Unix style Command Line](https://progate.com/languages/commandline)

[Introduction to GitHub](https://progate.com/languages/git)

[GitHub Learning Labs](https://lab.github.com/)

[GitHub Upstream Contribution commands cheat sheet](https://statusneo.com/github-upstream-contributions-cheetsheet/)

[Up For Grabs](https://up-for-grabs.net/#/)
