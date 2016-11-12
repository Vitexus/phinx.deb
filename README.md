Phinx Debian Package
====================

![apt-get install](https://raw.githubusercontent.com/Vitexus/phinx.deb/master/phinx-install-deb.png "apt-get install php-phinx")

Phinx (https://phinx.org/) makes it ridiculously easy to manage the database migrations for your PHP app. In less than 5 minutes you can install Phinx and create your first database migration. Phinx is just about migrations without all the bloat of a database ORM system or framework.


Installation
------------

For Debian, Ubuntu & friends please use repo:

    wget -O - http://v.s.cz/info@vitexsoftware.cz.gpg.key|sudo apt-key add -
    echo deb http://v.s.cz/ stable main > /etc/apt/sources.list.d/ease.list
    aptitude update
    aptitude install php-phinx

![Installation](https://raw.githubusercontent.com/Vitexus/phinx.deb/master/phinx-deb-install.png "Installation")


Usage
-----

simply run phinx in /usr/bin

Build
-----

To build package simply run deb-package.sh
(cli/php.ini:  phar.readonly = Off)



Happy coding!
