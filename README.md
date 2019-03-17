# Tic-Tac-Toe game using react

## Running this code

```bash
git clone git@github.com:theBuzzyCoder/react-tutorial.git tic-tac-toe
cd ./tic-tac-toe
docker build --rm -f "Dockerfile" -t tic-tac-toe:latest .
docker run --rm -p 3000:3000 -d tic-tac-toe:latest
```

Load the running game in http:localhost:3000/

## Development

### Running in background

```bash
docker run --rm -p 3000:3000 -d -v ${PWD}/src:/app/src tic-tac-toe:latest
```

#### Checking logs

```bash
$ docker container ls
CONTAINER ID        IMAGE                   COMMAND                  CREATED              STATUS              PORTS                            NAMES
b9a54b50f0fb        tic-tac-toe:latest      "npm start"              About a minute ago   Up About a minute   0.0.0.0:3000->3000/tcp           gracious_ardinghelli

$ docker container logs {CONTAINER ID}
```

#### Stopping the container

```
$ docker container ls
CONTAINER ID        IMAGE                   COMMAND                  CREATED              STATUS              PORTS                            NAMES
b9a54b50f0fb        tic-tac-toe:latest      "npm start"              About a minute ago   Up About a minute   0.0.0.0:3000->3000/tcp           gracious_ardinghelli
docker container rm --force {CONTAINER ID}
```

### Running in foreground

```bash
$ docker run --rm -it -p 3000:3000 -d -v ${PWD}/src:/app/src tic-tac-toe:latest sh
/app/src# npm start
```
