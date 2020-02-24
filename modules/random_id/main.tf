resource "random_id" "main" {
  byte_length = var.byte_length

  keepers = {
    keeper_id = var.keeper_id
  }
}