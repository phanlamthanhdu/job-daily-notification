variable instance {
    description = "This is an instance"
    type = string
    default = "#{ATF_NAME}#" # Have to be stripped
}

output "print" {
    value = var.instance
}