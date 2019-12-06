
# script autoisntall-openhab-cloud 


sudo apt-get update
sudo apt-get upgrade
sudo apt install git
sudo apt-get install build-essential redis-server mongodb nginx python
sudo apt-get install nodejs
sudo apt-get install npm
node --version
mkdir -p /var/www/openhab.madiotech.com
cd /var/www/openhab.madiotech.com
git clone https://github.com/openhab/openhab-cloud.git
npm install socket.io
cd /var/www/openhab.madiotech.com/openhab-cloud
npm install
cp config-development.json config.json # cambiar el dominio de openhab-cloud editar fichero
node app.js # arrancar openhabcloud en localhost:3000


# acceso via   http://openhab.madiotech.com:3000

# redireción vía proxy inverso con  nginx mirar fichero default en githab 


