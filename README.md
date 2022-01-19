# Bukukas-assessment

> Question and expected solution :

Create an in-memory key-value store HTTP API Service which implements:
● /get/<key> → Return value of the key
● /set → Post call which sets the key/value pair
● /search → Search for keys using the following filters
○ Assume you have keys: abc-1, abc-2, xyz-1, xyz-2
○ /search?prefix=abc would return abc-1 and abc-2
○ /search?suffix=-1 would return abc-1 and xyz-1
○ You only need to implement prefix & suffix functionality for search
● The service should have proper test coverage
● It should have a Dockerfile
● DevOps Evaluation:
○ If kubernetes experience;
■ Write deployment spec with 0 downtime deployments, service spec
and ingress spec

## Solution

A REST-API service that works as an in memory key-value store
The application is hosted on [http://localhost:8080/](http://localhost:8080/) by the default

### How to build :

Using Docker:

- clone this repository.
- Build the Docker image with the command

```
docker build -t <image-name>:<tag-name> .
```

### How to run :

After building the image, run it with the command

```
docker run -d -p 8085:8080 <image-name>
```

(The service will run on port 8085 in this case.)

## Running the service on a k8s cluster
