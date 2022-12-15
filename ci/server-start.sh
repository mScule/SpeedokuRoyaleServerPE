# This script builds and starts the server container.

source ../cli/text-styling.sh
source ../cli/components.sh

header "SpeedokuRoyaleServer | Production environment - Server start\n"

header "Creating Images"
    info "Building server image..."
    docker build \
        --tag sr-server \
        --file ../server/Dockerfile \
        ../server/
echo

header "Creating Containers"
    info "Create server container..."
    docker create \
        --name    sr-server-instance \
        --network sr-network \
        --publish 8000:8000 \
        sr-server
echo

header "Server going live..."
    info "Running created containers..."
    docker start sr-server-instance
