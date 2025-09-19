#!/bin/bash

# Скачиваем Xray, если его нет
if [ ! -f ./xray ]; then
  wget https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip
  unzip Xray-linux-64.zip
  chmod +x xray
fi

# Запуск Xray с конфигом
./xray -config config.json
