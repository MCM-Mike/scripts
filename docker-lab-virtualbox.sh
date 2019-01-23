# docker lab 

#VirtualBox Virtual Machines
#	VM Name	Role	OS	CPU Cores	RAM (MB)	Disk (GB)	Comments
#1	rs	Rancher server	CoreOS	2	1024	10	
#VirtualBox → VM Settings → Network → Adapter 1: NAT
#VirtualBox → VM Settings → Network → Adapter 2: Bridged Adapter
#2	ra1	Rancher agent	2048	s20
#3	ra2	Rancher agent	2048	20Hard disk file type: VDI (VirtualBox Disk Image)
#Storage on physical hard disk: Dynamically allocated
# source: https://github.com/satrapu/rancher-workshop/wiki/VirtualBox


#my scripts
# local execution on workstation
sudo docker run -d --restart=unless-stopped -p 80:80 -p 443:443 rancher/rancher:stable

# start vms in virtualbox
# check new version URL https://github.com/rancher/os/releases 

docker-machine create -d virtualbox --virtualbox-boot2docker-url https://releases.rancher.com/os/latest/rancheros.iso  rancheros1
docker-machine create -d virtualbox --virtualbox-boot2docker-url https://releases.rancher.com/os/latest/rancheros.iso  rancheros2
docker-machine create -d virtualbox --virtualbox-boot2docker-url https://releases.rancher.com/os/latest/rancheros.iso  rancheros3
docker-machine create -d virtualbox --virtualbox-boot2docker-url https://releases.rancher.com/os/latest/rancheros.iso  rancheros4

# check network in virtualbox 
# bridged for local access or setup new net in virtualbox

# check if all vms are up
docker-machine ls

# access docker vm via ssh
docker-machine ssh rancheros1

# add script from rancher cluster 
# sudo docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run rancher/rancher-agent:v2.1.5 --server https://192.168.0.13 --token q7jxfzscqnwj5lvkwxhdshk7z5ggll699krpmnmr2s9lp4 --ca-checksum fe87521c8810fe305b22b0e36c1977e0d03a3d52fd0718025ce7764fed --worker

