FROM postgres:9

LABEL maintainer="Caiwenhui <471113744@qq.com>"

COPY cdh6-hive-postgres /cdh6-hive-postgres

COPY init-hive-db.sh /docker-entrypoint-initdb.d/init-user-db.sh

# 因为schema内部用了相对地址加载关联的sql，所以这里的工作目录需要指定为脚本当前目录
WORKDIR /cdh6-hive-postgres