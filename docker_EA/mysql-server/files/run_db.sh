set -e
set -x
[ "$(ls -A /var/lib/mysql)" ] && echo "Running existing db in /var/lib/mysql" ||
	( echo ’Initialising db’; tar xpzvf default_mysql.tar.gz)
/usr/sbin/mysqld