### Remaote Backend State 

### Why Use Remote State?
Using local terraform.tfstate works fine for one person, but in a team:

1. Collaboration becomes difficult
2. There's a risk of overwriting others’ work
3. It's hard to enforce locking, consistency, and history tracking

#### Remote Backend Benefits
A backend determines where the state is stored. When using a remote backend like AWS S3 + DynamoDB, Terraform can:

1. Store state in the cloud (e.g., S3)
2. Use DynamoDB for state locking to prevent concurrent runs
3. Support collaboration across teams and CI/CD tools
4. Keep state secure and version-controlled

#### Typical Remote Backend Setup
```
terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket"
    key            = "env/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}
```
