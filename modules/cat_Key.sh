#!/bin/bash


cd $HOME/.ssh
ls -1 *.pub

echo "_________________________________"

echo "Please enter the name of the key file etc id_ed25519.pub):"
read key_file

if [ -f ~/.ssh/$key_file ]; then
    cat ~/.ssh/$key_file
else
    echo "File ~/.ssh/$key_file does not exist."
fi

sleep 1000







#find ~/.ssh -type f -name 'id_rsa.pub' -exec cat {} \;




# Print the path and names of the private and public keys
#echo "Private key: ~/.ssh/${private_key}"
#echo "Public key: ~/.ssh/${public_key}"

#copy this for authorize
#cat ~/.ssh/${public_key}
