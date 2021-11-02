# Terrakube Docker Compose

## Step 1 - Clone Docker Compose Repository

```bash
git clone https://github.com/AzBuilder/azb-docker-compose.git
cd local
docker-compose up
```

> Only use docker compose for testing, all the security is disable and it uses an H2 in-memory database. The terraform registry is not enable because it require a https certificate in order to work with the terraform CLI.

## Step 2 - Test Terrakube Postman Collection.

Now you can test Terrakube in your local environment you can follow these steps:

1. Download the [postman project](https://github.com/AzBuilder/terrakube-server/tree/main/postman) 
2. Create an organization
3. Create a team
4. Create a workspace and fill all the variables or environment variables.
5. Create a job using TCL

## Step 3 - Test Terrakube with the CLI

Work in progress the CLI needs to be updated to support terrakube server 1.5.1

## Step 4 - Test Terrabkue with the UI

Work in progress the UI needs to be refactor to remove Azure Active Directory dependency to run in standalone mode.