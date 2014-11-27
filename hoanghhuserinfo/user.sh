# writen by: hoanghh
# Goal: Create user by list directory name, add ssh public key to them. public key inside each directory

for i in $(ls -d */); do
    # ${i%/} equal name of each directory name
    sudo useradd -m -s /bin/bash ${i%/}

    sudo mkdir /home/${i%/}/.ssh
    sudo cat ./${i%/}/* > /home/${i%/}/.ssh/authorized_keys
    sudo chmod 600 /home/${i%/}/.ssh/authorized_keys
    sudo chown ${i%/}:${i%/} -R /home/${i%/}/.ssh
done


