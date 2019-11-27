if [ -f "/www/docker/interface" ];then
    git clone https://github.com/iWECon/flask.git /www/docker/interface
else
    cd /www/docker/interface
    git pull
fi
