# Specify the provider and access details
provider "aws" {
  region = "${var.aws_region}"
}

# Default security group to access the instances via WinRM over HTTP and HTTPS
resource "aws_security_group" "default" {
  name        = "Prod_SG"
  description = "Prod Security Group"

  # RDP access from anywhere
  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_instance" "windows1" {
  instance_type = "${var.instance_type}"
  ami           = "${var.ami_id}"

  # Subnet Id
  subnet_id = "${var.subnet_id}"

  # The name of our EC2 keypair you've created and downloaded
  key_name = "${var.key_name}"

  # Our Security group to allow WinRM access
  security_groups = ["${aws_security_group.default.name}"]

  tags = {
      Name = "${var.instance_name}"
  }

  # EC2 User Data
  user_data = <<EOF
  <powershell>
    mkdir -Path C:\\ANS
    Invoke-RestMethod -Uri https://raw.githubusercontent.com/nathanguk/bootstrap-demo/master/PowerShell/script.ps1 -OutFile C:\\ANS\\script.ps1
    Invoke-Expression 'C:\\ANS\\script.ps1 -Parameter1 ${var.Parameter1} -Parameter2 ${var.Parameter2}
  </powershell>
  EOF
}
