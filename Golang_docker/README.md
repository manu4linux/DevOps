##How to start:
Don't start if the server is already running in a docker
```text
ps -axf  |  grep test-golang
```

Goto `golang_docker` folder and execute below docker commands.
```text
cd  golang_docker
```

Create new image #
```text
docker build -t test-golang  . 
```
     
Run the Image we just created #
```text
docker run     \
        --volume=~/go_dok_data:/data   \
        --volume=~/go_dok_logs:/logs \
        test-golang
``` 
