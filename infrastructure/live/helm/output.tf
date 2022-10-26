

output "public_ip" {
  value = module.helm_nginx_ip.public_ip
}