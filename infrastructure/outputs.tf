output "instance_public_ip_addr" {
        #type . name . value 
  value = aws_instance.web_server.public_ip
}