resource "aws_route_table" "public-rt" {
    vpc_id = "${aws_vpc.default.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.gw.id}"
    }

    tags = {
        Name = "Pbulic Subnet Route"
    }
  
}

# Assign the route table to the Public Subnet

resource "aws_route_table_association" "public_rt1" {
    subnet_id = "${aws_subnet.public-subnet.id}"
    route_table_id = "${aws_route_table.public-rt.id}"
}

resource "aws_route_table_association" "public_rt2" {
    subnet_id = "${aws_subnet.public-subnet2.id}"
    route_table_id = "${aws_route_table.public-rt.id}"
}

# Define Private Route table
resource "aws_route_table" "private-rt" {
    vpc_id = "${aws_vpc.default.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_nat_gateway.nat_gw1.id}"
    }

    tags = {
        Name = "Private Subnet Route"
    }
  
}

# Assign the route table to the Private Subnet

resource "aws_route_table_association" "private_rt1" {
    subnet_id = "${aws_subnet.private-subnet.id}"
    route_table_id = "${aws_route_table.private-rt.id}"
}

resource "aws_route_table_association" "public_rt2" {
    subnet_id = "${aws_subnet.private-subnet2.id}"
    route_table_id = "${aws_route_table.private-rt.id}"
}

