#!/bin/bash

hugo
rsync -4 --include ".*" -v -rz --checksum public/ circl@cppz.circl.lu:/var/www/gcve.eu
