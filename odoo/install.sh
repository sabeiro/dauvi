sudo apt -y install docker.io
sudo gpasswd -a ${USER} docker
sudo apt -y install python3-pip wget
sudo pip3 install docker-compose
sudo apt -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt -y install docker-ce docker-ce-cli containerd.io

#sudo curl -sSL https://get.docker.com/ | sh
sudo service docker restart
cd odoo
chmod 777 -R etc/ extra-addons/ config/ odoo-db-data/ odoo-web-data/

chown -R $USER:$USER extra-addons etc
chmod -R 755 extra-addons etc


docker-compose up -d
docker-compose ps
docker-compose logs
docker-compose logs [service_name] -f --tail=10
docker-compose logs web -f --tail=10
docker-compose logs db -f --tail=10
docker-compose exec -it web /bin/bash
docker-compose down
