# docker-cdh6-hive-postgresql
Is used by Hive to store metadata


docker build -t ccinn/cdh6-hive-postgres:latest .

docker run --net docker-cdh6 --name cdh6-hive-postgres -d -e POSTGRES_PASSWORD=ccinn ccinn/cdh6-hive-postgres:latest