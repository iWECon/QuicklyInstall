if [ -f "/usr/local/bin/docker-compose" ];then
    echo "docker-compose already installed."
    echo "checking it status..."
else
    echo "ready installing..."
    sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi


if [ -f "/usr/bin/docker-compose" ];then
    echo "docker-compose is normal..."
else
    echo "link docker-compose..."
    sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
fi

docker-compose --version
echo "all of done."        
