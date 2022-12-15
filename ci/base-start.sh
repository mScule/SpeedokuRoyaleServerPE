# This script starts the base for the server.
# Base contains the shared network between the server container and db
# container, and the db container itself.
# This is driven only once when you setup the project on the host.

source ../cli/text-styling.sh
source ../cli/components.sh

header "SpeedokuRoyaleServer | Production environment - Base start\n"

header "Creating Network"
    info "Creating network..."
    docker network create sr-network
echo

header "Creating Images"
    info "Building db image..."
    docker build \
        --tag sr-db \
        --file ../db/Dockerfile \
        ../db/
echo

header "Creating Containers"
    info "Creating db container..."
    docker create \
        --name    sr-db-instance \
        --network sr-network \
        --publish 3306:3306 \
        sr-db
echo

header "Base going live..."
    info "Running created containers..."
    docker start sr-db-instance
