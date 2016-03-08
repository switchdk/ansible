# Ansible Ubuntu Workstation Preparation Playbook
 
## Introduction
This playbook is designed to install the common tools used when developing with Ansible on Ubuntu 14.04. The general plays completed by the playbook are as follows:
 
1. Prepares the workstation (updates packages and installs pip)
1. Installs useful Python libraries
1. Installs git, git-subrepo and GitEye 
1. Installs Atom text editor
1. Installs Haroopad Markdown editor
1. Installs Docker and tools
1. Installs NodeJS and NPM
1. Installs vim
1. Installs Yeoman
 
## Usage
1. Clone the repository or download an archive of the repository
1. Run the Ansible installer

	```bash
	sudo bash install_ansible.sh
	```

1. Run the Ansible playbook

	```bash
	ansible-playbook prep.yml
	```
 
## Post Deployment Considerations
* Log out and log in (again)
* GitEye (visual interface to git), type

	```bash
	giteye &
	```

* Atom is available from the menu
* Haroopad is available from the menu
* The remaining tools are only available from command line
 
 
## Target Client Template Pre-requisites
1. Logged into an Ubuntu workstation
2. User account is allowed to run `SUDO` without password prompt 
 
## Ansible Roles Included in the Playbook
 
#### atom
Downloads Atom from Github and installs it.
 
#### docker
Installs Docker and useful Dockers tools (docker-compose etc.) from the official public repository.

#### git
* Install Git using apt-get.
* Clones the Github repository for git-subrepo and includes the executable in the user's path
* Downloads and install [GitEye](http://www.collab.net/products/giteye) from Collab.net

#### haroopad
Downloads and installs [Haroopad](http://pad.haroopress.com/)

#### npm
Adds the official Node repository and installs node.js and npm.

#### pip
Installs useful Python libraries (including Ansible) using pip.

#### ubuntu-prep
Install pip and updates the OS using apt-get.

#### vim
Install VIM using apt-get and set the editor as the default command line editor.

#### yo
Install Yeoman

## Version History
| Version | Release Date | Author | Description |
| ------- | ------------ | ----------- | ----------- |
| 0.1 | 08 Jan 2016 | Peter Dam | Initial release |
| 0.2 | 15 Feb 2016 | Peter Dam | Updated to include Haroopad |
| 0.3 | 08 Mar 2016 | Peter Dam | Updated the readme.md and replaced git-stree with git-subrepo |