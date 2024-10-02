data "aws_availability_zones" "available" {
    state = "available"
}

data "aws_vpc" "default" {
    default = true
}

data "aws_route_table" main {
    vpc_id = data.aws_vpc.default.id
    filter {       #filtering ""main route table among all the route tables
        name = "association.main"
        values = ["true"]
    }
}