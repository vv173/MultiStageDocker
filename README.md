#### dockerizing-nodejs-with-multistage is a sample project that demonstrates how to use multi-stage builds in Docker to create optimized and smaller Docker images. This project uses Node.js to create a simple web application and package it into a Docker image. That project also shows how to build docker images from scratch.

***Prerequisites***

Before you begin, ensure that you have Docker installed on your local machine:

**Getting Started**

To get started, clone this repository to your local machine:

```
git clone https://github.com/vv173/dockerizing-nodejs-with-multistage.git
```

**Next, navigate to the project directory:**

```
cd dockerizing-nodejs-with-multistage/
```

**Building the Docker Image**

To build the Docker image, run the following command:

```
docker build --build-arg VERSION={version} -t {image-name} .
```

This command will use the Dockerfile in the project directory to build the Docker image.

**Running the Docker Container**

To run the Docker container, run the following command:

```
docker run -p 3000:3000 {image-name}
```

This command will start the Docker container and map port 3000 in the container to port 3000 on the host. You can now access the web application by opening a web browser and navigating to http://localhost:3000.

**Test**

To test that the application is running, you can use curl to make a GET request to the root endpoint:

```
curl http://localhost:3000/
```

If the application is running correctly, you should receive the following response:

```
{"ip":"(server_ip_address)","hostname":"(server_ip_address)","version":"(app_version)"}
```

Or you can use the ```docker ps``` command and check the health status.


<sub>
You can find the version of this application created with Docker compose and ReactJS on the develop branch.
</sub>
