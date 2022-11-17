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
