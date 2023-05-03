# Modify schema of production sql database 

- it's an operation in which you can modify the structure of an existing tables such as: add, modify or remove columns

## ALTER TABLE - ADD Column


if we want to add a column, use this syntax:

```js
    ALTER TABLE databaseName ADD columnName SET DATA TYPE datatype;
```


this next example add an "talent" to the "students" table

```js
    ALTER TABLE students ADD talent SET DATA TYPE varchar(255);
```

## ALTER TABLE - DROP COLUMN

now, if we want to delete a column in a table, use this syntax:
```js
   ALTER TABLE table_name DROP COLUMN column_name;
```
this next example will delete a column 'birth' from students table

```js
   ALTER TABLE students DROP COLUMN birth;
```


## ALTER TABLE - RENAME COLUMN

with alter table operation we also can rename our table, this is the syntax:
```js
   ALTER TABLE table_name RENAME COLUMN old_name to new_name;
```

lets see an example in which we will change "students" table to "people":
```js
   ALTER TABLE students RENAME COLUMN students to people;
```

## ALTER TABLE - ALTER/MODIFY DATATYPE
in addetion, with ALTER TABLE we have the ability to change the datatype of any column such as: VARCHAR() TO INTEGER.

use this syntax to change the datatype:
```js
ALTER TABLE table_name ALTER COLUMN column_name datatype;
```

### now we will impliment everything we have learned to see exactly how everything works:

## ALTER TABLE Example

let's say that we have created table in our database, and this table has ``` id, username, email, password```, and we have more than one row filled up with different ```users data```

here is an example of ```users``` table : 

|id|username|email|password|
|--|--------|-----|--------|
|1|ali|ali@gmail.com|123123|
|2|sara|sara@gmail.com|sara123123|
|3|ahmed|ahmed@gmail.com|ahmed.idk|

let's now try to add a new ``column country`` to ``users table``.

notic: if you want to add datatype while creating this new column u can write after the column name which datatype you want.
``use this syntax to add new column``

```js
    ALTER TABLEx     users ADD country VARCHAR(255);
```
look how ``user table`` will be..?

|id|username|email|password|country|
|--|--------|-----|--------|-------|
|1|ali|ali@gmail.com|123123||
|2|sara|sara@gmail.com|sara123123||
|3|ahmed|ahmed@gmail.com|ahmed.idk||

## Change Data Type Example

let's say that username's datatype is ``VARCHAR()``, now we want to change ``username's datatype`` to ``TEXT``

open your SQL SHELL then follow this syntax:

```js
ALTER TABLE users ALTER COLUMN username SET DATA TYPE TEXT;
```

notice: that ``username's datatype`` now became ``TEXT``

## DROP COLUMN Example

in this example, we will learn and see how to drop a ``specifc column`` in the table, so know we want to drop ``country column`` from ``users table``

open your SQL SHELL, then use this syntax:
```js
   ALTER TABLE users DROP COLUMN country;
```

let's see how ``users table`` will look like now..?

|id|username|email|password|
|--|--------|-----|--------|
|1|ali|ali@gmail.com|123123|
|2|sara|sara@gmail.com|sara123123|
|3|ahmed|ahmed@gmail.com|ahmed.idk|

we can notice that, ``country column`` that we have added before has been deleted from the ``users table``.


## what is downtime?

it's a period of time when database is not available for users to access and modify.

#### when does it happen..?

- for example: when make modify or change on database, such as:
1- adding or removing colmuns, in this case it can cause delay or disruption.

## what is migration?

- it's a proccess allows to manage changes to database schema safily, prevent losing data.


#### Zero-downTime

it's a way or a soultion which give us the ability to make any changes on database or system without any impact on the availablity of the database to users.

it requiers a great planning, to avoid or prevent any disruption for user and allows him to continue to read or change data.

## How to Update your Database Schema Without Downtime...?

#### there are three ways...

- Rolling update: allows to update one table  while keeping the rest of the database available
- Blue-green deployment: strategy for managing database updates and migrations, it allows for updates to be made without disrupting user access or causing downtime,,, creating a duplicate database with the updated schema, and then switching traffic to the new database once it is ready. This can be done by updating the configuration of the application to point to the new database, and then redirecting traffic from the old database to the new one.
- Online schema change tools: There are various tools available that can modify the schema of a database while keeping it online and available to users
