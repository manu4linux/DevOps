How to start:


Goto `Golang_docker` folder and execute below docker commands.
```text
cd  Golang_docker
```

Create new image #
```text
docker build -t my-golang-app .
```
     
Run the Image we just created #
```text
docker run -it --rm --name my-running-app my-golang-app
``` 

should see `hello, world`
