#!/bin/sh
sudo apt-get update && export DEBIAN_FRONTEND=noninteractive \
&& sudo apt-get install -y software-properties-common gnupg \
&& sudo add-apt-repository -y 'deb http://ppa.launchpad.net/serokell/tezos/ubuntu bionic main' \
&& sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 37B8819B7D0D183812DCA9A8CE5A4D8933AE7CBB \
&& sudo apt-get update -y \
&& sudo apt-get install -y tezos-client \
&& wget https://gitlab.com/functori/dev/factori/-/snippets/2509259/raw/main/factori.sh -O factori \
&& chmod +x factori \
&& sudo mv factori /usr/bin/ \
&& docker pull registry.gitlab.com/functori/dev/factori:latest


