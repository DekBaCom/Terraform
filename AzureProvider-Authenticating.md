## Azure Provider Authentication
## Azure Provider: Authenticating using a Service Principal with a Client Secret
We recommend using either a Service Principal or Managed Service Identity when running Terraform non-interactively (such as when running Terraform in a CI server) - and authenticating using the Azure CLI when running Terraform locally.

# Creating a Service Principal
- Contributor role for requirement on azure subscription

# Solution 1 create with azure CLI
- Login Azure portal
- Select running with azure CLI and get account list with command 
az account list
The output (similar to below) will display one or more Subscriptions - with the id field being the subscription_id field referenced above.
[
  {
    "cloudName": "AzureCloud",
    "id": "20000000-0000-0000-0000-000000000000",
    "isDefault": true,
    "name": "PAYG Subscription",
    "state": "Enabled",
    "tenantId": "10000000-0000-0000-0000-000000000000",
    "user": {
      "name": "user@example.com",
      "type": "user"
    }
  }
]

- Set azure subsciption with command 
az account set --subscription="<ID or Subscription id >" 

- Create Account   on example account sp 
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/20000000-0000-0000-0000-000000000000"

- This command will output 5 values:
{
  "appId": "00000000-0000-0000-0000-000000000000",
  "displayName": "azure-cli-2017-06-05-10-41-15",
  "name": "http://azure-cli-2017-06-05-10-41-15",
  "password": "0000-0000-0000-0000-000000000000",
  "tenant": "00000000-0000-0000-0000-000000000000"
}

- These values map to the Terraform variables like so:
  appId = client_id
  password = client_secret
  tenant = tenant_id

- Finally, it's possible to test these values work as expected by first logging in:
az login --service-principal -u CLIENT_ID -p CLIENT_SECRET --tenant TENANT_ID

## Screenshots
![Screenshot](https://miro.medium.com/v2/resize:fit:640/format:webp/1*QDz_gfYoyYmFKMMenBh-hw.png)

## Provider
## Acknowledgements

 - [Download Terraform App](https://developer.hashicorp.com/terraform/downloads)
 - [How to install Terraform](https://developer.hashicorp.com/terraform/tutorials/azure-get-started/install-cli)
 - [Download Visual Studio Code](https://code.visualstudio.com/download)
 - [Azure Power shell](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.3#msi)
  - [Authenticating to Azure using the Azure CLI](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/azure_cli)
 - [Authenticating to Azure using Managed Service Identity](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/managed_service_identity)
 - [Authenticating to Azure using a Service Principal and a Client Certificate](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_certificate)   
 - [Authenticating to Azure using a Service Principal and a Client Secret](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret)  
 - [Authenticating to Azure using a Service Principal and OpenID Connect](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_oidc) 
