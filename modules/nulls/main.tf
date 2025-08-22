resource "null_resource" "example" {
  count = var.null_count

  triggers = {
    index = tostring(count.index)
  }
}

