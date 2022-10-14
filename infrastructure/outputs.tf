output "instance_public_ip_addr" {
        #type . name . value / [ for list of the count from ec2 "aws_instance" "web_server" 
        # {count = 3 ]
  value = aws_instance.web_server[*].public_ip
}