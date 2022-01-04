# Instalamos npm y node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install v14.18.2

# Instalamos pm2
npm install pm2@latest -g

# Verificamos si el directorio existe si no para crearlo
DIR="/home/ec2-user/strapi-template"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi
