# ansible-molecule
Playbook to install nginx and molecule to test in the Ubuntu distribution

## run playbook
ansible-playbook -i local default.yml --check

## test with molecule (python 2.7)
source activate env2.7

- roles/nginx> molecule test
- roles/swap> molecule test

molecule --debug test  # debug switch

sudo apt-get install python3-pip # Install pip
sudo pip3 install virtualenv # install virtualenv using pip3
virtualenv venv # create a virtual environment 
(virtualenv -p /usr/bin/python2.7 venv or virtualenv -p python3 myenv  # use required python interpreter)
source venv/bin/activate # Active virtual environment
(python3 -m venv myenv #in python3)
deactivate

pip freeze # versions of all installed packages in a local virtual environment 
