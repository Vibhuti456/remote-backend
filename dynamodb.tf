resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "dynamo_db"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockId"

  attribute {
    name = "LockId"
    type = "S"
  }
  tags = {
    Name = "dynamo_db"
  }
}