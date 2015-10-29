![Customer-partner one-to-one relationship schema](../imgs/customer-schema.png)

In a world with only monogamous relationships, I think that this example works pretty well. Let's say that there is a company that buys clothes for the users. I guess it would more information than height (and might not care about hair color), but other info can be added later. There is one main customer who is paying, but this company allows one person a discount for their spouse if they pay on the same account. Then there is a one to one relationship between the customer and the partner. The customer might not have a partner, but if the customer does, then there will only be one partner.

![Grocery list and items schema, many to many relationship example](../imgs/grocery_list_schema.png)

**Reflection**
**What is a one-to-one database?**
A one to one database is a database that has a one to one relationship between instances. One instance of a table cannot correlate to multiple instances of another. An instance of one table can relate to nothings else or one other instance of another table, but not to multiple.

**When would you use a one-to-one database? (Think generally, not in terms of the example you created)**
You would use a one-to-one database when a record (or row) may or may not need certain attributes (or columns). Instead of having columns with null value, you can create a one-to-one relationship between that table and another table, thus creating a one-to-one database.

**What is a many-to-many database?**
A many to many database has multiple tables, and in each table there are records that could be could contain the attributes of multiple records of the other table. Unlike one-to-many databases where this only works one way, in a many-to-many database this relationship is shared by both databases, working either way. A record from either table can hold multiple attributes of the other table. To make this work, a connecting table is needed with foreign keys connecting to both tables.

**When would you use a many-to-many database? (Think generally, not in terms of the example you created)**
You would use a many-to-many database when there are no exclusive connections between the tables that only allow one connection of one record to another.

**What is confusing about database schemas? What makes sense?**
I still need to figure out how many-to-many databases work in practice. I kind of get the concept behind how it works, but I'm going to need to make a couple working examples to see how the connecting table works. Everything else makes a decent amount of sense, even the complex databases! Complex databases are merely combinations of the other table relationships.
