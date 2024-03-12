resource "aws_dynamodb_table" "my-dynamodb" {
  name           = "my-dynamo"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  # Define the attribute used in the key schema
  attribute {
    name = "id"
    type = "S"
  }

  # Optionally, define other attributes (not necessarily indexed)
  attribute {
    name = "other_attribute"
    type = "S"
  }

  # Define secondary indexes (if needed)
  global_secondary_index {
    name               = "my-gsi"
    hash_key           = "other_attribute"
    projection_type    = "ALL"  # Adjust as needed
  }
}