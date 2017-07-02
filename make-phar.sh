#!/bin/bash

if [ -d "phinx" ]; then
    cd phinx
    git fetch origin master
    git reset --hard FETCH_HEAD
    git clean -df
    cd ..
else
    git clone git://github.com/robmorgan/phinx.git
fi

cd phinx
git fetch --tags --force
TAG=`git tag | tail -n 1| sed ':a;N;$!ba;s/\n/ /g'`
git checkout tags/$TAG
composer install
curl -LSs https://box-project.github.io/box2/installer.php | php
php box.phar build
cd ..
