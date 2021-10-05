# child module for variable

variable aim_id {
  description = "This contains the value for ami id"
  type = list
}

variable instance_type  {
  description = "This is an instance type for ec2 instance"
  type = string
}

variable tag {
  type = string
  description = "This value contains the tag for all resources"
}