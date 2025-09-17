resource "aws_security_group" "app-sg" {
    vpc_id = data.terraform_remote_state.network.outputs.vpc_id
    dynamic "ingress" {
        for_each = var.rules
        content {
         protocol = ingress.value["proto"]
          from_port = ingress.value["port"]
          to_port = ingress.value["port"]
          cidr_blocks = ingress.value["cidr_blocks"]
          description = ingress.value["description"]
        }
      
    }
    egress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = "allowing all traffic"
    }

}

