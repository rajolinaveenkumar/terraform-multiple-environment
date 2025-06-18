# What are Terraform Modules
* Terraform module is collection of terraform configuration files that are grouped together to create reusable infra.
* It's like a templates you can call it wherever you want, instead of copying-pasting the same code again and again.
* It help us to build infrastructure faster, cleaner, and smarter."

### For example:
* You create a module to launch an EC2 instance.
* Then you can call that same module in dev, staging, and prod — just with different variables (like AMI ID, subnet, etc.).*

## Real-Time Advantages of Using Modules
1. Reusability
You write once, use anywhere — no need to duplicate code.

2. Consistency
All environments (dev, staging, prod) follow the same structure — less chance of mistakes.

3. Easier to Maintain
Update a module in one place, and all the environments get the fix — saves time and avoids human errors.

4. Separation of Concerns
Each module focuses on a specific task: VPC, EC2, RDS, ALB, etc. Makes the code clean and understandable.

5. Team Collaboration
Different team members can own different modules (like networking team owns VPC module, app team owns EC2 module).


## 🛠️ Real-Time Example:
Let’s say your project has:
  * 3 EC2 instances (frontend, backend, and DB)
  * In 3 environments (dev, staging, prod)

### Without modules:
* You’d be copying EC2 code block 9 times (3 x 3), which is boring, error-prone, and hard to maintain.
### With modules:
* You create 1 EC2 module and reuse it by just changing the inputs.
