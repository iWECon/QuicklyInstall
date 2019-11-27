path=/www/docker/interface

if [ -d "/www/docker/interface" ]; then
    cd $path
    git pull
else
    git clone https://github.com/iWECon/flask.git $path
    cd $path
fi
