# neo4j

Src has files to be copied to Docker `/var/neo4j/src` folder

# Github dockerfile
https://github.comcast.com/mpadur001c/cvpi-docker-neo4j
     How to start:
Don't start if the neo4j server is already running in a docker
ps -axf  |  grep test-neo4j
      Go to `cvpi-docker-neo4j` folder and execute below docker commands.
cd  /app/home/cvpi/neo4j/cvpi-docker-neo4j/
Create new image #
docker build -t test-neo4j  . 
     
Run the Image we just created #
docker run     \
        --publish=7474:7474 --publish=7687:7687  \
        --volume=/app/home/cvpi/neo4j/data:/data   \
        --volume=/app/home/cvpi/neo4j/logs:/logs \
        test-neo4j

# Sample instance:
http://147.191.64.50:7474/browser/
http://vcwgraph-po-01.sys.comcast.net:7474/browser/
u: neo4j
p: cvpi

# Docker for Neo4j:
official Docker files : https://hub.docker.com/_/neo4j/
latest Community dockerfile: 
https://github.com/neo4j/docker-neo4j-publish/blob/master/3.1.3/community/Dockerfile
latest enterprise dockerfile:
https://github.com/neo4j/docker-neo4j-publish/blob/master/3.1.3/enterprise/Dockerfile




