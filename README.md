# SpeedokuRoyaleServer | Production environment
Consists of two running containers linked together with docker network.

- **sr-network** The network that links the database and server together.
- **sr-db-instance** The container based of the database image.
- **sr-server-instance** The container based of the server image.

The environment is controlled with scripts found in **ci** directory.

## CI Scripts
Scripts control two different sections of the environment, the **base** and the
**server**.

### Base
Consists of the **sr-network** and the **sr-db** and the **sr-db-instance**.

### Server
Consists of the **sr-server** and the **sr-server-instance**.

### Start scripts
Builds images, creates networks and containers from the built images in the
section.

### Stop scripts
Removes the containers, networks and images in the section.

## Usage
First thing that you want to do when setting this up for the VERY FIRST time is
that you want to clone the SpeedokuRoyaleServer project from the github into the
server folder, so that the server folder contains the SpeedokuRoyaleServer
project folder.

To make sure that the server goes live in the right way, ensure that you have
the base live first.

## Documentation
If you want to know what every script does, they have comments that summarize
their actions.
