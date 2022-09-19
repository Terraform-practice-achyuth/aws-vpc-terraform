resource "aws_route_table" "my_route_table" {
  
    vpc_id = aws_vpc.my-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.gateway.id
    }

    tags = {
      "Name" = "My_Own_Route_Table"
    }

}

resource "aws_route_table_association" "my_public_subnet_association" {
  
    subnet_id = aws_subnet.my-subnet.id
    route_table_id = aws_route_table.my_route_table.id

}

resource "aws_route_table_association" "my_public_subnet_association2" {
  
    subnet_id = aws_subnet.my-subnet2.id
    route_table_id = aws_route_table.my_route_table.id

}
