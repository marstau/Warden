#!/bin/bash

xgo --targets=windows/*,darwin/amd64,linux/amd64,linux/386,linux/arm --dest=cache ./

osarchs=(windows_amd64 windows_386 darwin_amd64 linux_amd64 linux_386 linux_arm)
files=(warden-windows-4.0-amd64.exe warden-windows-4.0-386.exe warden-darwin-10.6-amd64 warden-linux-amd64 warden-linux-386 warden-linux-arm-5)

unzip web/dist.zip -d web

for i in 0 1 2 3 4 5; do
  mkdir cache/warden_${osarchs[${i}]}
  mkdir cache/warden_${osarchs[${i}]}/web
  mkdir cache/warden_${osarchs[${i}]}/custom
  cp LICENSE cache/warden_${osarchs[${i}]}/LICENSE
  cp -r plugin cache/warden_${osarchs[${i}]}/plugin
  cp README.md cache/warden_${osarchs[${i}]}/README.md
  cp -r web/dist cache/warden_${osarchs[${i}]}/web/dist
  cp config.ini cache/warden_${osarchs[${i}]}/custom/config.ini
  cp config.ini cache/warden_${osarchs[${i}]}/custom/config.default.ini
  cd cache
  if [ ${i} -lt 2 ]
  then
    mv ${files[${i}]} warden_${osarchs[${i}]}/warden.exe
    zip -r warden_${osarchs[${i}]}.zip warden_${osarchs[${i}]}
  else
    mv ${files[${i}]} warden_${osarchs[${i}]}/warden
    tar -zcvf warden_${osarchs[${i}]}.tar.gz warden_${osarchs[${i}]}
  fi
  rm -rf warden_${osarchs[${i}]}
  cd ..
done

zip -r ./cache.zip ./cache/

rm -rf web/dist cache
