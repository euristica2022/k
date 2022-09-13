#!/bin/sh
sudo chmod 777 px
sudo chmod 777 ks
./px --proto http &
./ks server -p 3000 --reverse -v &
ssh -f -N -D 0.0.0.0:1080 localhost
