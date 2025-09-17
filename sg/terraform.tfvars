rules = [
  {
    port        = 8080
    proto       = "tcp"
    cidr_blocks = ["0.0.0.0/0", "192.168.16.0/23"]
    description = "exposing the application"
  },
  {
    port        = 22
    proto       = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "ssh connect"
  }

]

