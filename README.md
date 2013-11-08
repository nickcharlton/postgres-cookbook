# postgres cookbook

A better cookbook for handling [Postgres][] on Debian and Ubuntu. This is a simpler
cookbook than the default [postgresql][pg-cookbook] (which is commonly paired with 
[database][]), but with less of the complexity, bugs and huge dependency chain.

It provides recipes for installing the client libraries, configuring and tuning a 
server, and a set of `Chef::Resource` implementations to allow you to administrate
Postgres from inside recipes.

# Requirements

Tested on:

* Debian Wheezy (7.0)
* Ubuntu Precise (12.04)

# Usage

# Attributes

# Recipes

# Author

Author: Nick Charlton (nick@nickcharlton.net)

[Postgres]: http://www.postgresql.org/
[pg-cookbook]:  https://github.com/opscode-cookbooks/postgresql
[database]: https://github.com/opscode-cookbooks/database

