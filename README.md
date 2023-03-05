# TP7A4

### If you want to run you own containers without docker-compose you need to : 
### 1- clone this repository on your computer, open your terminal nd go to this reposiroty 
### 2- create a bridge netork : docker network create bridge_network
### 3- create and run a mongodb container in this network : docker run --network bridge_network --name mongodb-container -d mongo
### 4- build the flysk image : docker build -t flaskimage
### 5- create and run a flask container with this image in the same network : docker rin --name flask-container --netork bridge_network -p 8080:5000 -v $(pwd)/filedisplayed.txt:/app/filedisplayed.txt flaskapptp6

#### Now you have a working app which displays the content of a file. Any changes in the content of this file will be shown by refreshing the web page. You can go on localhost:8080 on you web browser to see it !
### 
### 
### 
### if you want your app to be persistant, you need to : 
### 7- create a volume : docker volume create mongodb-volume
### 8- create and run a mongodb container in the bridge network and link it to the volume : docker run --network bridge_netwoek --name mongo-container-persistant -d -v volume mongodb-volume:/data/db mongo
### 9- stop this container : docker stop mongodb-container-persistant
### 10- create a backup of the mongodb-volume : docker run --rm --network bridge-network -v $(pwd):/backup mongo tar cvf :backup/backup.tar /data/db
### 
### 
###
###
### To do it with a docker-compose you need to :
### 1- go to the repository/Part2
### 2- create a bridge netork : docker network create bridge_network
### 3- use the command : docker compose up
###
#### Now you have a working app which displays the content of a file. Any changes in the content of this file will be shown by refreshing the web page. You can go on localhost:8080 on you web browser to see it !
