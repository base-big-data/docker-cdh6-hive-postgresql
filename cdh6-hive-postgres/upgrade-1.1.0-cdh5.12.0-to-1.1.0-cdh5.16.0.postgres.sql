SELECT 'Upgrading MetaStore schema from 1.1.0-cdh5.12.0 to 1.1.0-cdh5.16.0';

\i 040-HIVE-19372.postgres.sql;
\i 041-HIVE-19605.postgres.sql;

UPDATE "VERSION" SET "SCHEMA_VERSION"='1.1.0', "VERSION_COMMENT"='Hive release version 1.1.0', "SCHEMA_VERSION_V2"='1.1.0-cdh5.16.0' where "VER_ID"=1;
SELECT 'Finished upgrading MetaStore schema from 1.1.0-cdh5.12.0 to 1.1.0-cdh5.16.0';
