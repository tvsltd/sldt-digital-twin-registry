## Setup & Usage (Docker)

Follow the steps below to setup & run digital-twin-registry:

1. Run docker compose to launch all services (digital-twin-registry, postgres, pgadmin). 

    > $ docker compose -f docker-compose-tvs.yml up

2. The digital-twin-registry will be launched on port [4243](http://localhost:4243) 

3. You can try to go through the Swagger documentation and try exploring the APIs (which won't work) :p [digital-twin-registry](http://localhost:4242)

4. Now open postman and import the collection in the project repository named **digital-twin-registry.postman_collection.json**

5. Now you can explore all the available APIs which are modified version (included example and other details) of their postman collection, which is located [here](docs/development/postman/tractusx-dtr-aas-3.1.0-collection.json)

6. You are ready to explore further more by making changes by yourself. Just make sure to use the following command after making modifications in the codebase:

    > docker compose  -f docker-compose-tvs.yml up --build