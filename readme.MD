# Terraform AWS VPC Module customised

This module is going to create the following resources.for high availability we are going to get first 2 availability zones.

* VPC
* Internet Gateway associated with VPC
* 2 public subnets
* 2 private subnets
* 2 database subnets
* Database Subnet Group
* EIP
* NAT Gateway
*Public Route table
*Private Route table
*Database Route table
* Routes
* Route table associations with subnets
*Peering with default VPC (if required)
* Peering routes in acceptor and requestor route tables

#Inputs
* project_name (mandatory) : user must provide their project name
* environment (mandatory) : user must provide their environment
*vpc_cidr (mandatory) : user must provide their VPC CIDR
*enable_dns_hostnames (optional) : defaults to true
*common_tags (optional) : default is empty. user can provide tags in list(string) format
*vpc_tags (optional) : default is empty. user can provide tags in list(string) format
*igw_tags (optional) : default is empty. user can provide tags in list(string) format
*public_subnet_cidrs (mandatory) : user must provide 2 valid public subnet cidrs only.
*public_subnet tags (optional) : default is empty. user can provide tags in list(string) format
*private_subnet_cidrs (mandatory) : user must provide 2 valid private subnet cidrs only.
*private_subnet tags (optional) : default is empty. user can provide tags in list(string) format
*database_subnet_cidrs (mandatory) : user must provide 2 valid database subnet cidrs only.
*database_subnet tags (optional) : default is empty. user can provide tags in list(string) format
*db_subnet_group_tags (optional) : default is empty. user can provide tags in list(string) format
*nat_gateway_tags (optional) : default is empty. user can provide tags in list(string) format
*public_route_table_tags (optional) : default is empty. user can provide tags in list(string) format
*private_route_table_tags (optional) : default is empty. user can provide tags in list(string) format
*database_route_table_tags (optional) : default is empty. user can provide tags in list(string) format
*is_peering_required (optional) : defaults to false
*vpc_peering_tags (optional) : efault is empty. user can provide tags in list(string) format

# Outputs

* vpc_id : vpc id created
* public_subnet_ids : list of 2 public subnet ids created
* private_subnet_ids : list of 2 private subnet ids created
* database_subnet_ids : list of 2 database subnet ids created