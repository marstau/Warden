# warden

[![Travis](https://img.shields.io/travis/miaolz123/warden.svg)](https://travis-ci.org/miaolz123/warden) [![Go Report Card](https://goreportcard.com/badge/github.com/marstau/warden)](https://goreportcard.com/report/github.com/marstau/warden) [![Github All Releases](https://img.shields.io/github/downloads/miaolz123/warden/total.svg)](https://github.com/marstau/warden/releases) [![Gitter](https://img.shields.io/gitter/room/miaolz123/warden.svg)](https://gitter.im/miaolz123-warden/Lobby?utm_source=share-link&utm_medium=link&utm_campaign=share-link) [![Docker Pulls](https://img.shields.io/docker/pulls/miaolz123/warden.svg)](https://hub.docker.com/r/miaolz123/warden/) [![license](https://img.shields.io/github/license/miaolz123/warden.svg)](https://github.com/marstau/warden/blob/master/LICENSE)

[中文文档](http://warden.marstau.com/docs/1.0/api-zh-cn/)

## Installation

You can install warden from **installation package** or **Docker**.

The default username and password are `admin`, please modify them immediately after login!

### From installation package

1. Download the warden installation package on [this page](https://github.com/marstau/warden/releases)
2. Unzip the warden installation package
3. Enter the extracted warden installation directory
4. Run `warden`

Then, warden is running at `http://localhost:9876`.

**Linux & Mac user quick start command**

```shell
wget https://github.com/marstau/warden/releases/download/v{{VERSION}}/warden_{{OS}}_{{ARCH}}.tar.gz
tar -xzvf warden_{{OS}}_{{ARCH}}.tar.gz
cd warden_{{OS}}_{{ARCH}}
./warden
```

Please replace *{{VERSION}}*, *{{OS}}*, *{{ARCH}}* first.

### by heroku

```
heroku addons:create heroku-postgresql:hobby-basic -a magellan-warden
heroku buildpacks:add https://github.com/debitoor/ssh-private-key-buildpack.git -a magellan-warden
heroku buildpacks:add heroku/go -a magellan-warden
heroku config:set SSH_KEY=$(cat ~/.ssh/id_rsa | base64)  -a magellan-warden
heroku config:set url="https://github.com/search" -a magellan-warden
```

## Usage

## Commands

```
go build warden.go
npm run dist
```

## Denote

eth:0x6E6dDDE24C79e94633CACAa442FadDcD41Af31Bd

btc:1KaJo5bFTpFzJXSYDiFjYkHELvcQdy9NSn


## License

Copyright (c) 2016 [marstau](https://github.com/marstau) by MIT

# Reference

* <http://www.opencai.net/apifree/>
* 
