
mkdir ~/Alumnus-Theme
mkdir ~/Alumnus-Theme/node_modules

cd /var/www/html/wp-content/themes/Alumnus-Theme/

rm -rf node_modules

sudo ln -srv ~/Alumnus-Theme/node_modules/ ./