# postgresql

Practicing with PostgreSQL server with psql.

## Agenda

1. How to create database, schema, table

2. How to populate table with data

3. How to update table with data

## Basics

### Command Lines on psql
1. \l : list database
2. \c database_name : connect to database_name
3. CREATE/DROP DATABASE database_name
4. \d : list relations(tables) within the database
5. \i file_path : run sql script of the file path
6. SELECT * FROM TABLE OFFSET 5 : select every rows from id 6 to the end
7. \d table_name: describe table with column names, types, etc
8. \x : for extended display