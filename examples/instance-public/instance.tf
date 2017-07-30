resource "osc_instance" "euw2-adm-1" {
  ami               = "${var.centos7}"
  availability_zone = "${var.region}a"
  instance_type     = "t2.micro"
  key_name          = "${var.sshkey}"

  security_groups = ["${osc_security_group.euw2-adm-1.id}"]

  tags {
    Name    = "euw2-adm-1"
    project = "${var.project}"
  }
}


resource "osc_instance" "euw2-jenkins-1" {
  ami               = "${var.centos7}"
  availability_zone = "${var.region}a"
  instance_type     = "t2.large"
  key_name          = "${var.sshkey}"

  security_groups = ["${osc_security_group.euw2-management-1.id}"]

  tags {
    Name    = "euw2-jenkins-1"
    project = "${var.project}"
  }
}
