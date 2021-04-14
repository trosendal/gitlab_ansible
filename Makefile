###################################################################
##
## Install a gitlab instance in a container and run it with podman
##
###################################################################
## Run the playbook
###################################################################
all: dependancies
	ansible-playbook gitlab.yml -K

###################################################################
## Update and install dependancies
###################################################################
dependancies:
	sudo dnf -y update --refresh
	sudo dnf -y install ansible
	ansible-galaxy collection install containers.podman

.PHONY: all dependancies
