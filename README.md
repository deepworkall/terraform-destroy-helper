# How to destroy resources from Terraform

### Only those that are created accidently

1. Create backend.tf file with remote backend
    - Assign the appropriate tfstate file key
    - `terraform init`
2. List all resources in remote state
    - `terraform state list`
    - result `azurerm_container_registry.docker_registry`
3. Create modules for each resource type    
4. Inspect properties / Get remote state resources
    1. Option 1: Import by getting the remote state
        - `terraform state show <resource_address>`
            - e.g: `terraform state show azurerm_container_registry.docker_registry`
        - Minimal Config is enough
            - Storage Account
                - name
                - location
                - resource_group_name
                - account_replication_type
            - Linux Web App    
                - service_plan_id
        - Copy the id `/subscriptions/<id>/resourceGroups/<rg-name>/providers/Microsoft.ContainerRegistry/registries/<registry-name>`
    2. Option 2: Copy it from the original resources main.tf file
5. Copy minimal configuration in current main.tf    
6. Import the resource from terraform
    - `terraform import module.storage_account.azurerm_container_registry.docker_registry /subscriptions/<id>/resourceGroups/<rg-name>/providers/Microsoft.ContainerRegistry/registries/<registry-name>`
7. Execute `terraform destroy`
8. Repeat for Other resources
    - This approach is only application if you have different state files for each resources    
    - Replace the files extenstions with tf_ or anything else for which you want to ignore the state files


# Key Learnings

### You can play around with terraform state as long as import the remote state file correclty and login correctly with az login

### Deleting directly could be easy as well if there is individual tfstate file for each resource




