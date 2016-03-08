#!/usr/bin/env bash
# vim: filetype=sh


##### modeline end #####
set -e
set -u 
set -o pipefail
IFS=$'\n\t'

readonly PROGNAME=$(basename $0)
readonly PROGDIR=$(readlink -m $(dirname $0)) # Linux
readonly ARGS=("$@")

##### All vars should be local #####

get_ansible() {

  apt-get install -qqy software-properties-common && \
  apt-add-repository -y ppa:ansible/ansible && \
  apt-get update && \
  apt-get install -qqy ansible python-pip

}

main() {

  if [ "$(whoami)" == "root" ]
  then
    get_ansible
  else
    echo "The script must be run as ROOT (using SUDO)"
    exit 1
  fi
}

# Run script
main
