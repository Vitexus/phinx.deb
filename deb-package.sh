#!/bin/bash

phar-composer build https://github.com/cakephp/phinx

BINARY=`ls phinx.phar`
VERSION=`echo $BINARY | sed -e 's/phinx\/phinx-v//g' | sed -e 's/.phar//g'`
echo version: $VERSION

PACKAGE="php-phinx"
REVISION=`cat debian/revison | perl -ne 'chomp; print join(".", splice(@{[split/\./,$_]}, 0, -1), map {++$_} pop @{[split/\./,$_]}), "\n";'`

dch -b -v $VERSION-$REVISION --package $PACKAGE $CHANGES

dpkg-buildpackage -A -us -uc


LASTVERSION=`cat debian/lastversion`
if [ $LASTVERSION == $VERSION  ];
then
    echo $REVISION > debian/revison
else
    echo 0 > debian/revison
    echo $VERSION > debian/lastversion
fi

rm -rf debian/$PACKAGE

cd ..
ls *.deb

#~/bin/publish-deb-packages.sh
