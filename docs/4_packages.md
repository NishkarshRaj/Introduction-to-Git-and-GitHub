# Introduction to GitHub Packages

### Pushing Docker Images on GitHub Packages

* `Dockerfile`

```dockerfile
FROM    node:14-alpine 
WORKDIR /usr/src/app
COPY    . .
RUN     npm install
EXPOSE  3000
CMD     [ "npm", "start" ]
```

- `.dockerignore`

```
node_modules/
```

- `Docker Build And Push Actions`

```yaml
name: Create and publish a Docker image

on: push

env:
  REGISTRY: ghcr.io
  IMAGE_NAME: ${{ github.repository }}

jobs:
  build-and-push-image:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      packages: write

    steps:
      - name: Checkout repository
        uses: actions/checkout@v3

      - name: Log in to the Container registry
        uses: docker/login-action@65b78e6e13532edd9afa3aa52ac7964289d1a9c1
        with:
          registry: ${{ env.REGISTRY }}
          username: ${{ github.actor }}
          password: ${{ secrets.GITHUB_TOKEN }}

      - name: Extract metadata (tags, labels) for Docker
        id: meta
        uses: docker/metadata-action@9ec57ed1fcdbf14dcef7dfbe97b2010124a938b7
        with:
          images: ${{ env.REGISTRY }}/${{ env.IMAGE_NAME }}

      - name: Build and push Docker image
        uses: docker/build-push-action@f2a1d5e99d037542a71f64918e516c093c6f3fc4
        with:
          context: .
          push: true
          tags: ${{ steps.meta.outputs.tags }}
          labels: ${{ steps.meta.outputs.labels }}
```

## Important Links and References

[Official GitHub Packages Website](https://github.com/features/packages)

[GitHub Packages Community Page](https://help.github.com/en/packages/publishing-and-managing-packages/about-github-packages)

[Play With Docker](https://labs.play-with-docker.com/)
