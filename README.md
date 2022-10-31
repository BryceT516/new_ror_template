



### Initial commands to run after cloning the project (with the two Dockerfiles at the same directory level):
docker build -t base_image -f Dockerfile.base_setup .

docker build -t <image_name> .

### If this is an existing project (there are files beyond the Dockerfiles):
#### Start a container running the server:
docker container run -it -v $PWD:/app -v $PWD/bundle:/bundle -e BUNDLE_PATH=/bundle --rm -p 3000:3000 --name <image_name> <image_name>

#### Now you can navigate to the running app at `localhost:3000`

#### When the server is running in a container, that container can be accessed with (execute in another terminal):
docker container exec -it <image_name> /bin/bash

### If this is a new project and a Rails application has not been created yet:
#### Start a container with:
docker container run -it -v $PWD:/app -v $PWD/bundle:/bundle -e BUNDLE_PATH=/bundle --rm -p 3000:3000 --name <image_name> <image_name> /bin/bash

#### Create the rails application with:
rails new .

##### with bootstrap:
rails new . -j esbuild --css bootstrap

#### Once the rails app is created
rails db:create
rails db:migrate

#### the server can be started using `rails server -b 0.0.0.0`

#### Now you can navigate to the running app at `localhost:3000`
