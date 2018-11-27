#!/bin/sh
name=$1
katalog=$2

sudo useradd -m -k /home/ella/$katalog/ $name

sudo passwd $name

sudo usermod -G sudo $name

