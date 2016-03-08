# Ansible docker Role

## Introduction
 
Ansible Role to install docker from official Docker [repo](https://apt.dockerproject.org) on Ubuntu.

The role completes the following tasks:

1. Adds official Docker repo
1. Installs necessary kernel modules
1. Installs docker(-engine)
1. Creates the docker group
1. Starts the docker daemon
1. Adds the current user to the docker group
1. Add the docker tools (docker-machine and docker-compose)
 
## Usage
1. Invoke as a normal Ansible role
 
## Post Deployment Considerations
1. User must re-authenticate to session before docker group membership is available

## Role Prerequisites
* Internet access to [apt.dockerproject.org](apt.dockerproject.org)
* `SUDO`/`ROOT` permissions 
 
## Version History
| Version | Release Date | Author | Description |
| ------- | ------------ | ----------- | ----------- |
| 0.1 | 28 Jan 2016 | Peter Dam | Initial release |