resource "aws_internet_gateway" "gateway" {
  
    vpc_id = aws_vpc.my-vpc.id

    tags = {
      "Name" = "My_Internet_Gateway"
    }

}