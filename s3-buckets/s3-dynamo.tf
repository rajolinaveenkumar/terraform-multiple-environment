resource "aws_s3_bucket" "expense_s3_bucket" {
  count = length(var.environment)
  bucket =  "${var.owner}-${var.project}-${var.environment[count.index]}" #naveen-expense-dev/prod

  tags = {
    Name        = "${var.owner}-${var.project}-${var.environment[count.index]}"
    Environment = var.environment[count.index]
  }
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  count = length(var.environment)
  name           = "${var.owner}-${var.project}-${var.environment[count.index]}-locking"  

 billing_mode  = "PROVISIONED"

  read_capacity  = 1
  write_capacity = 1

  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "${var.owner}-${var.project}-${var.environment[count.index]}-locking"
    Environment = var.environment[count.index]
  }
}
