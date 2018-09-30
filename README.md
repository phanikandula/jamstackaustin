## Get Source code

If you have ssh keys setup with your github account:

`git clone --recursive git@github.com:phanikandula/jamstackaustin.git` 

otherwise:

`git clone --recursive https://github.com/phanikandula/jamstackaustin.git`

## On your local computer where you downloaded code

`cd jamstackaustin`

Make sure you have docker and make already installed.

`make up`

If you make changes to Dockerfile,

`make up-build`

This will build docker image and start the docker container in detached mode.

Now go into the container with:

`make exec`

## Inside the container

`cd site`

site is the volume mounted in docker-compose.yml You can now work with jamstackaustin directory from here.

`make serve`

Now your hugo server is running in watch mode

Leave this terminal running.

## From a different terminal, back on your local computer (outside the container)

You can start writing new posts, change themes etc and the changes will be hot reloaded and visible at http://localhost:1313/

When you happy with all the edits, build the site with:

Go back to the docker container terminal and kill the server with Ctrl C. Run:

`make build`

This will first empty the public folder and put the new version of static site in public folder.
