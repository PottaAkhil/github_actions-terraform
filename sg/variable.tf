
variable "rules" {
  type = list(object({
    port        = number
    proto       = string
    cidr_blocks = list(string)
    description = string
  }))
}
