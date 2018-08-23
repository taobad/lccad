#! /bin/sh 
if [ -f ~/.ssh/id_rsa.pub ]
then
    echo "SSH public key alreay created" 
else
    echo "Creating SSH Authentication Keys"
    ssh-keygen -t rsa
    echo "SSH Authentication Keys Created"
fi

# script takes in two arguments (username and ip_address)
username=$1
ip_addr=$2

# Create .ssh Directory on host server
echo "Create .ssh Directory on host server"
ssh ${username}@${ip_addr} mkdir -p .ssh

# Upload Generated Public Keys to host server
echo "Upload Generated Public Keys to host server"
cat ~/.ssh/id_rsa.pub | ssh ${username}@${ip_addr} "cat >> .ssh/authorized_keys"

# Set permissions on the authorized_keys
echo "Set permissions on the authorized_keys"
ssh ${username}@${ip_addr} "chmod 700 .ssh; chmod 640 .ssh/authorized_keys"

# SSH into host server
ssh ${username}@${ip_addr}
