# Terraform Module Best Practices (Real-Time DevOps Style)

### 1. 🧱 Keep Modules Small & Focused
* Each module should do one job (e.g., vpc, ec2, rds, alb, s3, etc.)
* Avoid putting all resources in one giant module.
👉 "One module, one purpose."

### 2. 🗃️ Use Meaningful Inputs and Outputs
* Define clear variables as inputs.
* Expose useful outputs like IPs, ARNs, or names.
```
# variables.tf
variable "instance_type" {}
variable "ami_id" {}

# outputs.tf
output "instance_id" {
  value = aws_instance.web.id
}

```

### 3. Version-Control Your Modules
* Use Git repos or internal registries.
* Lock module versions using ?ref=tag or ?ref=commit
```
source = "git::https://github.com/org/aws-ec2.git?ref=v1.0.0"
```

### 4. Don’t Hardcode Values Inside Modules
* Always pass environment-specific values using tfvars.
* Keep the module generic, not tied to any environment.

### 5.Test Your Modules in Isolation
* Test modules with sample configs (examples/ directory).
* Use terraform plan and terraform validate before sharing or deploying.

### 6. 📁 Use a Clean Folder Structure
```
terraform/
├── modules/
│   ├── vpc/
│   ├── ec2/
│   └── rds/
├── envs/
│   ├── dev/
│   │   └── main.tf, dev.tfvars
│   └── prod/
│       └── main.tf, prod.tfvars

```
### 7. 🔄 Use locals for Computation
* Keep logic like naming conventions or derived values in locals:

### 8. ✅ Use terraform-docs for Module Documentation
* Automatically generate markdown for variables and outputs.

### 9. 🧪 Enable Linting & Validation
* Use tools like:
    * tflint
    * checkov
    * terraform fmt to auto-format code

### 10. 👥 Write for Reuse by Teams
* Use descriptive variable names.
* Provide description in all variable blocks.
* Avoid environment-specific logic in modules.

### 11. Naming Conventions:
Use consistent naming conventions for variables and outputs within and across modules. 


