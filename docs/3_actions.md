# Introduction to GitHub Actions

### Continuous Integration

![CI](img/ContinuousIntegration.png)

In continuous integration practice, a centralized server regularly retrieves all new changes to the source code by developers and builds the software application from scratch.

The build and testing of the software is automated and every change or iteration to the software triggers an automated test run to ensure the desired delivery quality. The central repository is always kept updated in continuous integration practice.

### Continuous Deployment

![CICD](img/cicd.png)

### GitHub Actions

![Actions](img/actions.png)

### A template GitHub Action - Create React App

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

## Important Links and References

[GitHub Actions](https://github.com/features/actions)

[GitHub Actions Help](https://help.github.com/en/actions)

[Learn Docker](https://iq.opengenus.org/basics-of-using-docker/)

[GitHub Actions Blog](https://iq.opengenus.org/github-actions-using-container-scripts/)

[Actions Checkout Repository](https://github.com/actions/checkout)

[GitHub Marketplace](https://github.com/marketplace)


