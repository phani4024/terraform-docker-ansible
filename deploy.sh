#! /bin/bash
cd terraform
terraform init
terraform plan
terraform apply --auto-approve
IP=$(terraform output -raw instance_public_ip)
echo "Instance IP: $IP"

cd ..

echo "$IP ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/admin_key.pem" > inventory.ini
echo "running ansible playbook"
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i inventory.ini ansible/docker.yml -vvv

