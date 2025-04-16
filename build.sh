#!/bin/bash

hugo
rsync --include ".*" -v -rz --checksum public/ circl@cppz.circl.lu:/var/www/gcve.eu
