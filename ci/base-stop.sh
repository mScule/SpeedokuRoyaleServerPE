source ../cli/text-styling.sh
source ../cli/components.sh

header "SpeedokuRoyaleServer | Production environment - Base stop\n"

header "Base going down..."
    info "Stopping db container..."
    docker stop sr-db-instance
echo

header "Removing Containers"
    info "Removing db container..."
    docker container rm sr-db-instance
echo

header "Removing Networks"
    info "Removing network..."
    docker network rm sr-network
echo

header "Removing Images"
    info "Removing db image..."
    docker image rm sr-db
