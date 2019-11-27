path=/www/docker/interface

if [ -f "/www/docker/interface" ];then
    mkdir $path
    cd $path
    git pull
else
    git clone https://github.com/iWECon/flask.git $path
    cd $path
fi
