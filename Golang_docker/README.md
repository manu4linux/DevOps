FROM neo4j:3.1
COPY src/ /var/neo4j/src
EXPOSE 7474 7473 7687 

How to start:
Don't start if the server is already running in a docker
ps -axf  |  grep test-golang

Goto `golang_docker` folder and execute below docker commands.
cd  golang_docker

Create new image #
docker build -t test-golang  . 
     
Run the Image we just created #
docker run     \
        --publish=7474:7474 --publish=7687:7687  \
        --volume=~/data:/data   \
        --volume=~/logs:/logs \
        test-golang
 
