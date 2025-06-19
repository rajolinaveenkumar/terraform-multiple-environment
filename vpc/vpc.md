### Basic VPC Components (with Real-Time Meaning)

| Component                  | Real-Time Use                                                                                           |
| -------------------------- | ------------------------------------------------------------------------------------------------------- |
| **CIDR Block**             | The IP range for your VPC (e.g., `10.0.0.0/16`). It's like setting the foundation.                      |
| **Subnets**                | Divide the VPC into smaller parts — **public** (internet-facing) and **private** (internal).            |
| **Route Table**            | Tells AWS how to route traffic. Public subnets have a route to the internet, private don’t.             |
| **Internet Gateway (IGW)** | A door to the internet. Attach this to VPC for public access.                                           |
| **NAT Gateway**            | Lets private subnet instances access the internet (for updates etc.) without being exposed.             |
| **Security Groups**        | Acts like a firewall for EC2 — allows/denies traffic on ports/IPs.                                      |
| **NACLs (Network ACLs)**   | Optional firewall at subnet level. Stateless and used for extra filtering.                              |
| **VPC Peering**            | Connects 2 VPCs privately (within or across AWS accounts). No need for internet.                        |
| **VPC Endpoints**          | Lets you privately access AWS services (like S3, DynamoDB) from inside VPC, without using the internet. |
