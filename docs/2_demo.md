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

### GitHub Best Practices

`1. Use meaningful commit messages:` Make sure your commit messages are clear and concise, and describe the changes you made in the commit.

`2. Keep your repository organized:` Keep your repository organized by using folders to group related files together. Use descriptive names for your files and folders.

`3. Use branches:` Use branches to work on new features or bug fixes without affecting the main codebase. This allows you to experiment with new ideas without worrying about breaking the main code.

`4. Use pull requests:` Use pull requests to review and merge changes into the main codebase. Pull requests allow you to get feedback on your changes before they are merged into the main codebase.

`5. Use issues:` Use issues to track bugs, feature requests, and other tasks. Issues allow you to track progress and communicate with other contributors.

`6. Use comments and discussions:` Use comments and discussions to communicate with other contributors. This can help you get feedback on your changes and collaborate more effectively.

`7. Use GitHub Actions:` GitHub Actions allow you to automate common tasks, such as running tests or deploying your code. This can help you save time and reduce errors.

`8. Follow best practices for security:` Follow best practices for security, such as using strong passwords, enabling two-factor authentication, and reviewing access permissions regularly.

`9. Keep your repository up-to-date:` Keep your repository up-to-date by pulling in changes from other contributors regularly. This can help you avoid conflicts and ensure that your code is compatible with the latest changes.

`10. Document your code:` Document your code to make it easier for others to understand and use. Use clear and concise comments to describe what your code does, how it works, and any limitations or dependencies.

- [ ] [Readme](https://github.com/NishkarshRaj/Markdown-for-Documentation)

- [ ] [License](https://opensource.org/licenses/)

- [ ] [GitIgnore](https://github.com/github/gitignore)
 
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

## Important Links and References

[GitHub Skills Training](https://skills.github.com/)

[GitHub Upstream Contribution commands cheat sheet](https://statusneo.com/github-upstream-contributions-cheetsheet/)

[Up For Grabs](https://up-for-grabs.net/#/)
