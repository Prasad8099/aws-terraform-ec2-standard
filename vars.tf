variable "aws_region" {
  description = "AWS region to deploy in"
  type        = string
  default     = "us-east-1"
}

variable "instances" {
  description = "Map of instance configurations"
  type = map(object({
    ami           = string
    instance_type = string
    subnet_id     = string
    root_volume    = number
    ebs_volumes   = optional(list(number), []) # make extra volumes optional
    tags          = map(string)
  }))
}
