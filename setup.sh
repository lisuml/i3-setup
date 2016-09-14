#!/bin/bash

yaourt -S --noconfirm puppet

# Do the magic
sudo puppet apply manifests/site.pp
