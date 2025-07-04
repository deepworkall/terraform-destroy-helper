# How to destroy resources from Terraform

### Only those that are created accidently

1. Create backend.tf file with remote backend
    - Assign the appropriate tfstate file key
    - `terraform init`
2. List all resources in remote state
    - `terraform state list`
    - result `azurerm_container_registry.docker_registry`
3. Inspect properties / Get remote state resources
    1. Option 1: Import by getting the remote state
        - `terraform state show <resource_address>`
        - e.g: `terraform state show azurerm_container_registry.docker_registry`
        - Copy the id `/subscriptions/<id>/resourceGroups/<rg-name>/providers/Microsoft.ContainerRegistry/registries/<registry-name>`
    2. Option 2: Copy it from the original resources main.tf file
4. Copy minimal configuration in current main.tf    
5. Import the resource from terraform
    - `terraform import azurerm_container_registry.docker_registry /subscriptions/<id>/resourceGroups/<rg-name>/providers/Microsoft.ContainerRegistry/registries/<registry-name>`
6. Execute `terraform destroy`


# Key Learnings

### You can play around with terraform state as long as import the remote state file correclty and login correctly with az login





