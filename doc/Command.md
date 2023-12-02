## All Command for Terraform

## Command for Terraform 

### Initialize
Install the plugins Terraform needs to manage the infrastructure.

```bash
  terraform init
```
![Screenshot](https://github.com/DekBaCom/Terraform/blob/main/img/Screenshot-TF-Init.png)
### Validate
Validate code

```bash
  terraform validate 
```
### Plan 
Preview the changes Terraform will make to match your configuration.

```bash
  terraform plan 
```
  or 
```bash
  terraform plan -out main.tfplan
```
![Screenshot](https://github.com/DekBaCom/Terraform/blob/main/img/Screenshot-TF-plan.png)
### Apply 
Make the planned changes.

```bash
  terraform apply
```
  or 
```bash
  terraform apply -auto-approve
```
![Screenshot](https://github.com/DekBaCom/Terraform/blob/main/img/Screenshot-TF-Apply.png)
### Delete resource
Delete resource

```bash
  terraform destroy
```
  or 
```bash
  terraform destroy -auto-approve
```
![Screenshot](https://miro.medium.com/v2/resize:fit:720/format:webp/1*WGPFiNMCggQiy7Fb6bLGYw.png)
### Output
Terraform Output

```bash
  terraform output
```

### Saving state on Cloud 
Saving state on Cloud 

```bash
  terraform push
```
### delete the local state file.
delete the local state file.

```bash
  rm terraform.tfstate
```
### Inspect the current state using
Inspect the current state using

```bash
  terraform show
```
### Upgrade init Terraform
Upgrade init Terraform

```bash
  terraform init -upgrade
```

## Tips and Trick 
### How to set Alias for Terraform 
- Open PowerShell 
- Input command 

```bash
  Set-Alias tf terraform
```
After completed  you can be use sort command 

#### example : 

#### Old : 
```bash
  Terraform init 
```

#### New : 
```bash
  tf init
```

## Example code 
### Saving Terraform stage in cloud
#### Code 
```bash
backend "azurerm" {
      resource_group_name  = "tfstate"
      storage_account_name = "<storage_account_name>"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
  }
```
  #### Full Code 
  ```bash
  terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "tfstate"
      storage_account_name = "<storage_account_name>"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "state-demo-secure" {
  name     = "state-demo"
  location = "eastus"
}
```
