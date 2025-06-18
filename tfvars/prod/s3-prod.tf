bucket         = "naveen-expense-prod"
key            = "expense-backend-infra-prod" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
region         = "us-east-1"
dynamodb_table = "naveen-expense-prod-locking"