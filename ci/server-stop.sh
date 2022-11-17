source ../cli/text-styling.sh
source ../cli/components.sh

header "SpeedokuRoyaleServer | Production environment - Server stop\n"

header "Server going down..."
    info "Stopping server container..."
    docker stop sr-server-instance
echo

header "Removing Containers and Volumes"
    info "Removing server container and volume..."
    docker container rm --volumes sr-server-instance
echo

header "Removing Images"
    info "Removing server image..."
    docker image rm sr-server
