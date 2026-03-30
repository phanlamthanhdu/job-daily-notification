variable instance {
    description = "This is an instance"
    type = string
    default = "#{ ATF_NAME }#"
}

output "print" {
    value = var.instance
}