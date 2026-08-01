Terraform modules help you organize Infrastructure as Code (IaC) into reusable, maintainable, and scalable components. In enterprise projects, almost every Terraform implementation uses Parent Modules and Child Modules.
A Parent Module is the main Terraform configuration that calls one or more child modules.

It is the entry point of your Terraform project and is responsible for:

Configuring the provider (Azure, AWS, GCP)
Configuring the backend (Remote State)
Passing input variables to child modules
Managing dependencies
Collecting outputs from child modules
Executing terraform plan and terraform apply

