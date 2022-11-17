source ../cli/text-styling.sh
source ../cli/components.sh

header "SpeedokuRoyaleServer | Production environment - Server stop\n"

header "Server going down..."
    info "Stopping server container..."
    docker stop sr-server-instance
echo

header "Removing Containers"
    info "Removing server container..."
    docker container rm sr-server-instance
echo

header "Removing Images"
    info "Removing server image..."
    docker image rm sr-server
