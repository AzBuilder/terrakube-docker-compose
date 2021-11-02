# Terrakube Docker Compose with Azure Dependecy

## Docker Compose (H2 + Azure Storage)

### Step 1 - Register Azure Application

Please follow this steps:

* Create Azure Application.
* Enable the mobile and desktop flows. (Authentication + Advance Settings)
* Create Application URI Id inside "Expose an API". (Example: api://azbuilder)
* Add API scope. (Example: api://azbuilder/Builder.Default)
* Add an application role. (Example: Builder.Application.Default)
* Add the API permission as an application permission.
* Create an application secret.
* Request Microsoft Graph API Permissions: 
  * GroupMember.Read.All
  * Group.Read.All

For more information visit:
* [Register an application with the Microsoft identity platform](https://docs.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app)
* [Configure a client application to access a web API](https://docs.microsoft.com/en-us/azure/active-directory/develop/quickstart-configure-app-access-web-apis)
* [Configure an application to expose a web API](https://docs.microsoft.com/en-us/azure/active-directory/develop/quickstart-configure-app-expose-web-apis)
* [Azure OAuth 2.0 Sample for Azure AD Spring Boot Starter Resource](https://github.com/Azure/azure-sdk-for-java/tree/main/sdk/spring/azure-spring-boot-samples/azure-spring-boot-sample-active-directory-resource-server#configure-web-api)

### Step 2 - Create Azure Storage Account

Create an Azure Storage account and add the following containers with private access:

| Container    | Description                         |
| -------------| ------------------------------------|
| tfoutput     | Container to store terraform output |
| tfstate      | Container to store terraform state  |

## Step 3 - Docker Compose Environment Variables

Fill environment variables for api-server inside docker-compose.yaml:

| Component        | Description                         |
| -----------------| ------------------------------------|
| AzureAdAppId     | Azure Application (Client Id)       |
| AzGroupClientId  | Azure Application (Client Id) with Group.Read.All and roupMember.Read.All access |
| AzGroupTenantId  | Azure Application (Tenant Id) with Group.Read.All and roupMember.Read.All access |
| AzGroupSecret    | Azure Application (Secret Id) with Group.Read.All and roupMember.Read.All access |

Fill evironment variables for api-job inside docker-compose.yaml:

| Component              | Description                   |
| -----------------------| ------------------------------|
| AzureAdAppClientId     | Azure application (Client Id) |
| AzureAdAppClientSecret | Azure application secret      |
| AzureAdAppTenantId     | Azure tenant Id               |

Fill environment variables for terraform executor inside docker-compose.yaml:

| Component                             | Description                          |
| --------------------------------------| ------------------------------------ |
| AzureTerraformStateResourceGroup      | Azure storage account resource group |
| AzureTerraformStateStorageAccountName | Azure storage account name           |
| AzureTerraformStateStorageAccessKey   | Azure storage account access key     |
| AzureTerraformOutputAccountName       | Azure storage account name           |
| AzureTerraformOutputAccountKey        | Azure storage account key            |
| AzureAdAppClientId                    | Azure application (Client Id)        |
| AzureAdAppClientSecret                | Azure application secret             |
| AzureAdAppTenantId                    | Azure tenant Id                      |

> You can use one the same storage account for the terraform state and output or you can use different storage accounts

## Step 4 - Run AzBuilder Platform

```bash
docker-compose up
```