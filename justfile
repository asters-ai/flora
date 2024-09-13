
_help:
    @just --list

# Open Vscode workspace
code: 
    @echo "Opening vscode workspace..."
    code flora.code-workspace
# Start the Docker Compose services
up: 
    @echo "Starting Docker Compose..."
    docker compose -f docker-compose.dev.yaml up -d --watch

# Stop the Docker Compose services
down: 
    @echo "Starting Docker Compose..."
    docker compose -f docker-compose.dev.yaml down

# Follow the logs of all services
logs:
    docker compose -f docker-compose.dev.yaml logs -f
