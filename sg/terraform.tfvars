rules = [
  {
    port        = 80
    proto       = "tcp"
    cidr_blocks = ["0.0.0.0/0", "192.168.16.0/23"]
    description = "test"
  },
  {
    port        = 22
    proto       = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "new"
  },
  {
    port        = 3689
    proto       = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "demo"
  }
]