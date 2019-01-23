# docker lab 

# local execution on workstation
sudo docker run -d --restart=unless-stopped -p 80:80 -p 443:443 rancher/rancher

# start vms in virtualbox
# check new version URL https://github.com/rancher/os/releases 

docker-machine create -d virtualbox --virtualbox-boot2docker-url https://github.com/rancher/os/releases/download/v1.5.0/rancheros.iso rancheros1
docker-machine create -d virtualbox --virtualbox-boot2docker-url https://github.com/rancher/os/releases/download/v1.5.0/rancheros.iso rancheros2
docker-machine create -d virtualbox --virtualbox-boot2docker-url https://github.com/rancher/os/releases/download/v1.5.0/rancheros.iso rancheros3
docker-machine create -d virtualbox --virtualbox-boot2docker-url https://github.com/rancher/os/releases/download/v1.5.0/rancheros.iso rancheros4

# check network in virtualbox 
# bridged for local access or setup new net in virtualbox

# check if all vms are up
docker-machine ls

# access docker vm via ssh
docker-machine ssh rancheros1

# add script from rancher cluster 
# sudo docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run rancher/rancher-agent:v2.1.5 --server https://192.168.0.13 --token q7jxfzscqnwj5lvkwxhdshk7z5ggll699krpmnmr2s9lp4 --ca-checksum fe87521c8810fe305b22b0e36c1977e0d03a3d52fd0718025ce7764fed --worker

