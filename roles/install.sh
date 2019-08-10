echo "################### UPDATE #####################"
sudo apt-get update
sudo apt-get install -y python-pip libssl-dev
echo "################### VIRTUALENV ###################"
sudo apt-get install -y python-pip #sudo apt-get --yes install python3-pip
python -m pip install virtualenv
echo "################# IMP: REFER FILE FOR VENV COMANDS #######################"
# python -m virtualenv my_env # create venv: virtualenv -p /usr/bin/python3 molecule-python3
# source my_env/bin/activate # activate venv: source molecule-python3/bin/activate"
# echo "INSIDE VENV ###########
# python -m pip install molecule docker
# sudo pip install docker-py # Docker SDK for Python
# pip install testinfra # ensure latest testinfra
echo "###################### DOCKER ##########################"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# add the docker stable repository
sudo add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
apt-get update -y
apt-get install -y docker-ce
echo "########################################################"
echo "### Install Docker Compose #############################"
echo "########################################################"
COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep 'tag_name' | cut -d '"' -f4)
echo $COMPOSE_VERSION
curl -L "https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose -v
sudo groupadd docker # Create the docker group.
sudo usermod -aG docker $USER # add user to docker group.
exit
