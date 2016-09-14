#!/bin/bash

# Install required packages
yaourt -S --noconfirm puppet

# Do the magic
sudo puppet apply --modulepath=${PWD}/modules manifests/site.pp
