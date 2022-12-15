# Stops the instance of db container and removes it and the shared network.
# RUN THIS ONLY AFTER YOU HAVE STOPPED THE SERVER

source ../cli/text-styling.sh
source ../cli/components.sh

header "SpeedokuRoyaleServer | Production environment - Base stop\n"

header "Base going down..."
    info "Stopping db container..."
    docker stop sr-db-instance
echo

header "Removing Containers and Volumes"
    info "Removing db container and volume..."
    docker container rm --volumes sr-db-instance
echo

header "Removing Networks"
    info "Removing network..."
    docker network rm sr-network
echo

header "Removing Images"
    info "Removing db image..."
    docker image rm sr-db
