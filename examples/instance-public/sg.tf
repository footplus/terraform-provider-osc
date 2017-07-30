resource "osc_security_group" "euw2-adm-1" {
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.access_bastion}"]
  }

  tags {
    Name    = "euw2-adm-1"
    project = "${var.project}"
  }
}

resource "osc_security_group" "euw2-management-1" {
  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["${var.access_bastion}"]
  }

  tags {
    Name    = "euw2-management-1"
    project = "${var.project}"
  }
}
