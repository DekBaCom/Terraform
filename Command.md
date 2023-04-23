## All Command for Terraform

## Command for Terraform 

### Initialize
Install the plugins Terraform needs to manage the infrastructure.

```bash
  terraform init
```
![Screenshot](https://miro.medium.com/v2/resize:fit:720/format:webp/1*xyJUJK6eW0Cz8xbeLjDTmg.png)
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
![Screenshot](https://miro.medium.com/v2/resize:fit:720/1*TGx6HbMMkSHylpoMfN_x8w.gif)
### Apply 
Make the planned changes.

```bash
  terraform apply
```
  or 
```bash
  terraform apply -auto-approve
```
![Screenshot](https://miro.medium.com/v2/resize:fit:720/format:webp/1*BQtg9S1fW7ejxfAAepMZSQ.png)
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
example : 
Old : Terraform init 
New : tf init

