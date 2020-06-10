# Introduction to GitHub Packages

### Pushing Docker Images on GitHub Packages

* Authorize your local machine with the GitHub Package registry

```
$ echo "GitHub Token" | docker login docker.pkg.github.com --username [GitHub Username] --password-stdin
```

* Tag the local image with the GitHub Repository name

```
$ docker tag [local image name] docker.pkg.github.com/[GitHub username]/[Repository name]/[Image name]:[Version]
```

* Push the local image to remote GitHub registry

```
$ docker push docker.pkg.github.com/[GitHub username]/[Repository name]/[Image name]:[Version]
```

### Using the Docker Images locally

* Pull the remote docker image locally

```
$ docker pull docker.pkg.github.com/[Username]/[Repository Name]/[Image name]:[version]
```

* Check the Docker Image ID 

```
$ docker images
```

* Launch a docker container using the pulled docker image

```
$ docker run -it [Image ID]
```

## Important Links and References

[Official GitHub Packages Website](https://github.com/features/packages)

[GitHub Packages Community Page](https://help.github.com/en/packages/publishing-and-managing-packages/about-github-packages)

[Play With Docker](https://labs.play-with-docker.com/)
