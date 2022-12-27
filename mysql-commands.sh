# Backup mysql database in current directory.
docker exec <CONTAINER_ID_HERE> /usr/bin/mysqldump -u root --password=root DATABASE > backup.sql

# Restore mysql database from backup.sql file.
cat backup.sql | docker exec -i <CONTAINER_ID_HERE> /usr/bin/mysql -u root --password=root DATABASE