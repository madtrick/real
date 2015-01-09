## Load Postgres dumps

pg_restore --verbose --clean --no-acl --no-owner -h localhost -d real latest.dump
