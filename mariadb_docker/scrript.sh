service mysql start && sleep 2 && mysql --user=root --password=h < /wdpress.sql
service mysql start && sleep 2 && mysql --user=root --password=h < /wpdb_backup.sql
service mysql start && sleep 2 && mysql --user=root --password=h < /fixroot.sql && service mysql restart
