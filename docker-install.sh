value=$(uname -r)
echo "[VERSION]: " + $value
echo "[PLEASE CHECK IT]: can install when the version greater or equal to 3.10"
echo "press any key to continue.[ ctrl+c to quit ]"
read

sudo yum remove docker \
                docker-client \
                docker-client-latest \
                docker-common \
                docker-latest \
                docker-latest-logrotate \
                docker-logrotate \
                docker-engine

sudo yum install -y yum-utils\
                    device-mapper-persistent-data \
                    lvm2

sudo yum-config-manager \
     --add-repo \
     https://download.docker.com/linux/centeros/docker-ce.repo

sudo yum install docker-ce docker-ce-cli containerd.io

sudo systemctl start docker

echo "------------"
echo "😁all of done."
