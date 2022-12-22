# s2i-payara6-micro-builder

This is a Docker image running a Payara Micro 6 s2i (Source To Image) builder for the OpenShift.

## Getting Started

These instructions below cover usage information for this docker image 

### Prerequisities


In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

#### Get the image

Pull the image from DockerHub

```shell
docker pull nicolasduminil/payara6-micro-s2i-builder:latest
```

Create a container to run the image

```shell
docker run --name <container-name> nicolasduminil/payara6-micro-s2i-builder:latest
```

#### Environment Variables

* `VERSION` - 6.2022.1
* `PAYARA_JAR` - payara-micro-6.2022.1.jar
* `INSTALL_DIR` - /opt
* `LIB_DIR` - /opt/lib
* `DEPLOYMENT_DIR` - /opt/deploy

## Built With

* CentOS 7
* OpenShift 3
* OpenJDK 11
* Payara Micro 6.2022.1

## Find me

* [GitHub](https://github.com/nicolasduminil/s2i-payara6-micro-buildr.git)
* [DockerHub](https://hub.docker.com/repository/docker/nicolasduminil/payara6-micro-s2i-builder)


## Author

* **Niclas DUMINIL** - https://github.com/nicolasduminil