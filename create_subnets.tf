resource "aws_subnet" "my-subnet" {
  
    vpc_id = aws_vpc.my-vpc.id

    cidr_block = "10.0.1.0/24"

    tags = {
      "Name" = "Created_Using_Terraform"
    }

    availability_zone = "us-east-1a"

}

resource "aws_subnet" "my-subnet2" {
  
    vpc_id = aws_vpc.my-vpc.id

    cidr_block = "10.0.2.0/24"

    tags = {
      "Name" = "Created_Using_Terraform"
    }

    availability_zone = "us-east-1b"

}