## Delete 

/var/lib/postgres ❯❯❯ sudo mkdir data
/var/lib/postgres ❯❯❯ ll
total 4.0K
drwxr-xr-x 2 root root 4.0K Feb 25 15:20 data
/var/lib/postgres ❯❯❯ sudo chown postgres data/
/var/lib/postgres ❯❯❯ ll
total 4.0K
drwxr-xr-x 2 postgres root 4.0K Feb 25 15:20 data
/var/lib/postgres ❯❯❯ sudo chgrp postgres data/
/var/lib/postgres ❯❯❯ ll
total 4.0K
drwxr-xr-x 2 postgres postgres 4.0K Feb 25 15:20 data
/var/lib/postgres ❯❯❯


## Rebuild

[postgres@handshake-t400 ~]$ initdb -D /var/lib/postgres/data
The files belonging to this database system will be owned by user "postgres".
This user must also own the server process.

The database cluster will be initialized with locale "en_US.UTF-8".
The default database encoding has accordingly been set to "UTF8".
The default text search configuration will be set to "english".

Data page checksums are disabled.

fixing permissions on existing directory /var/lib/postgres/data ... ok
creating subdirectories ... ok
selecting dynamic shared memory implementation ... posix
selecting default max_connections ... 100
selecting default shared_buffers ... 128MB
selecting default time zone ... Asia/Ho_Chi_Minh
creating configuration files ... ok
running bootstrap script ... ok
performing post-bootstrap initialization ... ok
syncing data to disk ... ok

initdb: warning: enabling "trust" authentication for local connections
You can change this by editing pg_hba.conf or using the option -A, or
--auth-local and --auth-host, the next time you run initdb.

Success. You can now start the database server using:

    pg_ctl -D /var/lib/postgres/data -l logfile start

[postgres@handshake-t400 ~]$




/var/lib/postgres ❯❯❯ sudo systemctl enable postgresql.service
Created symlink /etc/systemd/system/multi-user.target.wants/postgresql.service → /usr/lib/systemd/system/postgresql
.service.
/var/lib/postgres ❯❯❯ sudo -iu postgres
[postgres@handshake-t400 ~]$ createuser --interactive
Enter name of role to add: phunc20
Shall the new role be a superuser? (y/n) y

/var/lib/postgres ❯❯❯ createdb dbGFG
/var/lib/postgres ❯❯❯ psql
psql: error: FATAL:  database "phunc20" does not exist
/var/lib/postgres ❯❯❯ sudo -iu postgres
[postgres@handshake-t400 ~]$
logout
/var/lib/postgres ❯❯❯ psql -d dbGFG
psql (13.2)
Type "help" for help.

dbGFG=# \du
                                   List of roles
 Role name |                         Attributes                         | Member of
-----------+------------------------------------------------------------+-----------
 phunc20   | Superuser, Create role, Create DB                          | {}
 postgres  | Superuser, Create role, Create DB, Replication, Bypass RLS | {}

dbGFG=#
