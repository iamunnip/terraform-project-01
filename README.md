# terraform-project-01
My sample terraform code

Please note, I'm still learning Terraform! :)

* Haven't followed any security best practices.

* This code works but when I execute "terraform apply" for the first time, it shows the below error and when execute again the error disappears.

`Error: Failure associating EIP: IncorrectInstanceState: The pending-instance-creation instance to which 'eni-01762044948c0dfaf' is attached is not in a valid state for this operation`
        `status code: 400, request id: 0900651d-3e57-4f4d-bd01-cf07991df6f2`

  `on modules/eip/eip.tf line 1, in resource "aws_eip" "rs_eip":`
   `1: resource "aws_eip" "rs_eip" {`
 
 
* Need a better way to modularize the Security Group resource.
 
* Need to use file function for user data in EC2 Instance resource.
