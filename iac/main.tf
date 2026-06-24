terraform {
  required_version = ">= 1.0"
}

resource "local_file" "ejemplo" {
  filename = "devops.txt"
  content  = "Infraestructura como codigo EcoVerde"
}
