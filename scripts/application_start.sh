# Navegamos al directorio donde esta nuestra aplicacion
sudo chmod -R 777 /home/ec2-user/strapi-template

#navigate into our working directory where we have all our github files
cd /home/ec2-user/strapi-template

# Agregamos npm y node a la ruta
export NVM_DIR="$HOME/.nvm"	
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm	
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)

# Instalamos el package.json
npm install

# Ejecutamos node
# Bloquea los registros normales en este
# > app.out.log 2> app.err.log < /dev/null & 
pm2 stop server
pm2 start server.js