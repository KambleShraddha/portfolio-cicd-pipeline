# Automated CI/CD Pipeline for Portfolio Website (Jenkins + Docker)

- Jenkins pipeline builds an Nginx image of the static portfolio site.
- Runs a smoke test against a live container.
- Deploy step is a documented stub you can convert to Azure later.

## Run locally
```
docker build -t portfolio-site:local .
docker run -d --name portfolio -p 8080:80 portfolio-site:local
```
