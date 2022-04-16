# Terrakube Docker Compose

## Step 1 - Clone Docker Compose Repository

```bash
git clone https://github.com/AzBuilder/terrakube-docker-compose.git
cd local
docker-compose up
```

> Only use docker compose for testing, all the security is disable and it uses an H2 in-memory database. The terraform registry is not enable because it require a https certificate in order to work with the terraform CLI.

## Step 2 - Test Terrakube Postman Collection.

Now you can test Terrakube in your local environment you can follow these steps or follow our [getting started guide](https://docs.terrakube.org/api/getting-started) for more detail information.

1. Download the [Getting Started](https://github.com/AzBuilder/terrakube-docker-compose/tree/main/getting-started) 
2. Create an organization
3. Create a team
4. Create a workspace and fill all the variables or environment variables.
5. Create a templete and run a job
6. Have fun with Terrakube
