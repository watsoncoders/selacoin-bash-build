#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y;
sudo apt-get install libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev -y;
sudo apt-get install libdb-dev libdb++-dev libminiupnpc-dev -y;
wget "https://github.com/wattson-coder/selacoin-bash-build/blob/main/selacoin-daemon-linux.tar.gz?raw=true" -O selacoin-daemon-linux.tar.gz;
tar -xzvf selacoin-daemon-linux.tar.gz;
sudo mv selacoind /usr/bin/;
mkdir "$HOME"/.selacoin && cd "$HOME"/.selacoin;
wget https://gist.githubusercontent.com/wattson-coder/f3726994a200c3cfebc23894937c4bd0/raw/9002b5ea276e656e10ba0d4c822b238453553d05/selacoin.conf -O selacoin.conf;
selacoind
