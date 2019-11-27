path=/www/docker/interface

if [ -f "/www/docker/interface" ];then
    git clone https://github.com/iWECon/flask.git $path
    cd $path
else
    mkdir $path
    cd $path
    git pull
fi
