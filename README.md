# Faster Ubuntu
This repository builds a Docker image that provides a performance-tuned Ubuntu 18:04 server.
This image starts from the default ( [Docker Ubuntu 18:04](https://hub.docker.com/_/ubuntu/) ) image.
Then it overrides some of the system configuration files and increases the limits of files, ports, connections, and sessions that can be opened.
The new configuration enables web servers, for example, to perform much faster as the limits of allocating resources at their disposal are now higher.

### Operating system:
- Ubuntu: 18.04

### Changes
- **net.core.somaxconn** – The maximum number of connections that can be queued for acceptance over the network.
- **net.core.netdev_max_backlog** – The rate at which packets are buffered by the network card before being handed off to the CPU.
- **sys.fs.file-max** – The system‑wide limit for file descriptors.