## All Command for Terraform
# To deploy infrastructure with Terraform:
Scope - Identify the infrastructure for your project.
Author - Write the configuration for your infrastructure.
Initialize - Install the plugins Terraform needs to manage the infrastructure.
Plan - Preview the changes Terraform will make to match your configuration.
Apply - Make the planned changes.

## Command for Terraform 

### INIT
init code

```bash
  terraform init
```
### Validate
Validate code

```bash
  terraform validate 
```
### Review Code
Review Code

```bash
  terraform plan 
  or 
  terraform plan -out main.tfplan
```
### Build 
Build

```bash
  terraform apply
  or 
  terraform apply -auto-approve
```
### Delete resource
Delete resource

```bash
  terraform destroy
  or 
  terraform destroy -auto-approve
```
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
