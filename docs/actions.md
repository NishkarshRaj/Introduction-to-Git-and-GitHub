# Introduction to GitHub Actions

### Continuous Integration

![CI](img/ContinuousIntegration.png)

In continuous integration practice, a centralized server regularly retrieves all new changes to the source code by developers and builds the software application from scratch.

The build and testing of the software is automated and every change or iteration to the software triggers an automated test run to ensure the desired delivery quality. The central repository is always kept updated in continuous integration practice.

### Continuous Deployment

![CICD](img/cicd.png)

### GitHub Actions

![Actions](img/actions.png)

### A template GitHub Action

* Declarative Actions YML script

```yml
name: Docker

on:
  push
env:
  IMAGE_NAME: helloworld

jobs:
  push:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - name: Build image
        run: docker build . --file Dockerfile --tag $IMAGE_NAME

      - name: Log into registry
        run: echo "${{ secrets.GH_TOKEN }}" | docker login docker.pkg.github.com -u ${{ github.actor }} --password-stdin

      - name: Push image
        run: |
          IMAGE_ID=docker.pkg.github.com/${{ github.repository }}/$IMAGE_NAME
          
          # Change all uppercase to lowercase
          IMAGE_ID=$(echo $IMAGE_ID | tr '[A-Z]' '[a-z]')

          # Strip git ref prefix from version
          VERSION=$(echo "${{ github.ref }}" | sed -e 's,.*/\(.*\),\1,')

          # Strip "v" prefix from tag name
          [[ "${{ github.ref }}" == "refs/tags/"* ]] && VERSION=$(echo $VERSION | sed -e 's/^v//')

          # Use Docker `latest` tag convention
          [ "$VERSION" == "master" ] && VERSION=latest

          echo IMAGE_ID=$IMAGE_ID
          echo VERSION=$VERSION

          docker tag $IMAGE_NAME $IMAGE_ID:$VERSION
          docker push $IMAGE_ID:$VERSION
```

* Dockerfile

```dockerfile
# Base Image
FROM ubuntu

# Commands to be executed on Image Creation
RUN apt-get -y upgrade && apt-get -y update

# Install Python
RUN apt install -y python3
RUN python3 --version

# Install Java
RUN apt install -y openjdk-11-jre-headless
RUN java --version

# Install C++ Compiler
RUN apt install -y g++
RUN g++ --version

# Install Docker
RUN apt install -y docker.io
RUN docker --version

# Move GitHub source files to Docker Image
RUN mkdir /src
ADD src/ /src
WORKDIR /src
```

## Important Links and References

[GitHub Actions](https://github.com/features/actions)

[GitHub Actions Help](https://help.github.com/en/actions)

[Learn Docker](https://iq.opengenus.org/basics-of-using-docker/)

[GitHub Actions Blog](https://iq.opengenus.org/github-actions-using-container-scripts/)

[Learn GitHub Actions](https://lab.github.com/githubtraining/github-actions:-hello-world)

[Actions Checkout Repository](https://github.com/actions/checkout)

[GitHub Marketplace](https://github.com/marketplace)


