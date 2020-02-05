resource "aws_eip" "eip_Nat" {
    vpc = true

  
}

resource "aws_nat_gateway" "nat_gw1" {
    allocation_id = "${aws_eip.eip_Nat}"
    subnet_id = "${aws_subnet.public-subnet.id}"
    depends_on = ["aws_internet_gateway.gw"]  
}
