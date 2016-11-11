Phinx Debian Package
====================

To build package simply run deb-package.sh
(cli/php.ini:  phar.readonly = Off)


Installation
------------

For Debian, Ubuntu & friends please use repo:

    wget -O - http://v.s.cz/info@vitexsoftware.cz.gpg.key|sudo apt-key add -
    echo deb http://v.s.cz/ stable main > /etc/apt/sources.list.d/ease.list
    aptitude update
    aptitude install php-phar


Usage
-----

simply run phinx in /usr/bin


Happy coding!
