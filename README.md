# Modify schema of production sql database 

- it's an operation in which you can modify the structure of an existing tables such as: add, modify or remove columns

## ALTER TABLE - ADD Column

if we want to add a column, use this syntax:

```js
    ALTER DATABASE databaseName ADD columnName datatype;
```


this next example add an "talent" to the "students" table

```js
    ALTER DATABASE students ADD talent varchar(255);
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
