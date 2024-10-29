# Docker Setup & Installation Guide

This guide provides step-by-step instructions for setting up and running the Digital Twin Registry using Docker.

## Prerequisites

- Docker and Docker Compose installed on your system
- Postman (for API testing)

## Quick Start

1. Launch the Services
    ```bash
    $ docker compose -f docker-compose-tvs.yml up
    ```
This command starts all required services:
- Digital Twin Registry
- PostgreSQL Database
- pgAdmin (Database Management Interface)

2. Access the Application
- Digital Twin Registry: [http://localhost:4243](http://localhost:4243)

## API Testing

### Using Postman
1. Import the API collection:
   - Locate `digital-twin-registry.postman_collection.json` in the project repository
   - Import it into Postman

2. Available Collections:
   - The imported collection includes enhanced versions of the original APIs with:
     - Example requests and responses
     - Detailed documentation
     - Additional metadata
   - Reference collection available at: `docs/development/postman/tractusx-dtr-aas-3.1.0-collection.json`

## Development

### Making Changes
1. Modify the codebase as needed
2. Rebuild and restart the services:
    ```bash
    $ docker compose -f docker-compose-tvs.yml up --build
    ```

## Troubleshooting

If you encounter any issues:
1. Ensure all required ports (4242, 4243) are available
2. Check Docker logs for detailed error messages
3. Verify that all services are running using `docker ps`

## Support

For additional support or to report issues, please refer to our documentation or create an issue in the repository.
