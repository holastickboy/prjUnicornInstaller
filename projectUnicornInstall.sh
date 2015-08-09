# Please feel free to re-distribute or modify
# Prompt user to provide SUDO user credentials
sudo true
####################################################
# Get docker
wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker unicorn
sudo ln -sf /usr/bin/docker /usr/local/bin/docker
sudo update-rc.d docker defaults
####################################################
# Get Docker-compose (comment section out if you do not want docker-compose)
sudo curl -L https://github.com/docker/compose/releases/download/1.3.3/docker-compose-`uname -s`-`uname -m` > docker-compose
sudo mv docker-compose /usr/bin/
sudo chmod +x /usr/bin/docker-compose
####################################################
# Alright, let's do this. Fire up the wordpress container!
sudo docker pull tutum/wordpress
sudo docker run -d -p 80:80 tutum/wordpress
