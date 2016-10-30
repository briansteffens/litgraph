#!/usr/bin/env bash

mysql -u root --execute="drop database if exists litgraph;"
mysql -u root --execute="create database litgraph;"
mysql -u root litgraph < schema.sql
mysql -u root litgraph < data.sql
