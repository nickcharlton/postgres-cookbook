# postgres cookbook

A better cookbook for handling [Postgres][] on Debian and Ubuntu. This is a simpler
cookbook than the default [postgresql][pg-cookbook] (which is commonly paired with 
[database][]), but with less of the complexity, bugs and huge dependency chain.

It provides recipes for installing the client libraries, configuring and tuning a 
server, and a set of `Chef::Resource` implementations to allow you to administrate
Postgres from inside recipes.

* https://wiki.debian.org/PostgreSql
* http://www.postgresql.org/docs/9.1/interactive/admin.html

## Requirements

Tested on:

* Debian Wheezy (7.0)
* Ubuntu Precise (12.04)

Both versions map `postgresql` to `postgresql-9.1` and so this is what is used.

## Usage

This cookbook follows the Debian conventions quite closely, so there's a lot less
attributes and configuration to set -- it's done already. But in general:

* A limited user called `postgres` is created to own the configuration and process.
* Local Unix Socket, IPv4 and IPv6 connections are available to all Postgres
databases and roles (users) with 'encryption' through `md5`.
* Remote database connections are disabled.

To add roles, databases and set permissions, you should use the resource in your 
own recipes.

## Recipes

* `postgres['default']`: installs the client utilities.
* `postgres['client']`: installs the Postgres client utilities (if you were 
connecting to a remote Postgres database).
* `postgres['server']`: installs and configures a Postgres server.
* `postgres['ruby']`: installs the Ruby libraries which are needed for the Chef 
resources.

## Definitions

It also provides a set of definitions for creating users (roles) and databases in
other recipes. These are derived from [Phil Cohen][]'s [chef-postgresql][] cookbook.

### Users

```ruby
pg_user 'test_user' do
    privileges superuser: false, createdb: false, login: true

    password 'password'
end

# create a user with an MD5-encrypted password
pg_user 'test_user' do
  privileges superuser: false, createdb: false, login: true
  encrypted_password '667ff118ef6d196c96313aeaee7da519'
end

# drop a user
pg_user 'myuser' do
  action :drop
end
```

### Databases

```ruby
# create a database
pg_database 'test_db' do
  owner 'test_user'
  encoding 'utf8'
  template 'template0'
  locale 'en_US.UTF8'
end

# drop a database
pg_database 'test_db' do
    action :drop
end
```

## Author

Author: Nick Charlton (nick@nickcharlton.net)

[Postgres]: http://www.postgresql.org/
[pg-cookbook]:  https://github.com/opscode-cookbooks/postgresql
[database]: https://github.com/opscode-cookbooks/database
[Phil Cohen]: https://github.com/phlipper
[chef-postgresql]: https://github.com/phlipper/chef-postgresql

