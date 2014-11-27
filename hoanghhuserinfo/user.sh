# writen by: hoanghh
# Goal: Create user by list directory name, add ssh public key to them. public key inside each directory

for i in $(ls -d */); do
    # ${USER_NAME} equal name of each directory name
    # check if user exist
    USER_NAME=${i%/}
    IS_EXIST=$(cat /etc/passwd | cut -d: -f1 | grep -o "^${USER_NAME}$")
    if [ -z $IS_EXIST ]; then
        sudo useradd -m -s /bin/bash ${USER_NAME}
        if [ $? -eq 0 ]; then
            echo "Add user '${USER_NAME}' successfully!"
	else
	    echo "Fail to add user '${USER_NAME}', not known reason!"
	    exit 1
	fi
    else
        echo "User '${USER_NAME}' already exist, not add again!"
    fi

    # add ssh public key
    SSH_DIR="/home/${USER_NAME}/.ssh"
    if [ ! -d ${SSH_DIR} ]; then
	sudo mkdir ${SSH_DIR}
    fi
    sudo cat ./${USER_NAME}/* >> ${SSH_DIR}/authorized_keys
    if [ $? -eq 0 ]; then
	echo "Add ssh public key to user '${USER_NAME}' successfully!"
    else
        echo "Fail to add ssh public key to '${USER_NAME}'"
	continue
    fi
    sudo chmod 600 ${SSH_DIR}/authorized_keys
    sudo chown ${USER_NAME}:${USER_NAME} -R ${SSH_DIR}
done
# end of sript
