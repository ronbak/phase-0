Release 2: Create a One-to-one Schema

![one-to-one schema](/week-8/imgs/one-to-one-schema.jpg)

This relationship is a one-to-one because an average person cannot have more than one passport and a passport cannot belong to more than one person. The information in both tables point to the title of the table only.

Release 4: Refactor

![grocery list](/week-8/imgs/grocery-lists-items.jpg)

Release 6: Reflect

1. What is a one-to-one database?
A one-to-one database is where two tables are only related by one item each. An example of this could be a driver license. A person has only one driver license and a driver license can only belong to one person.

2. When would you use a one-to-one database? (Think generally, not in terms of the example you created).
A one-to-one database would be used when there is information all on one table that is not being used very often. The columns that are not being used can be separated into a second table.

3. What is a many-to-many database?
A many-to-many database is where a table can have multiple items pointing to multiple items of another table and vice-versa. In a many-to-many relationship there is an additional table called a “join table” that holds the foreign keys of the tables in the relationship. 

4. When would you use a many-to-many database? (Think generally, not in terms of the example you created).
A many-to-many database would be used when there are items on one table that can related to many items on another table. An example of this would be books and authors. A book can be written by many authors and an author can write many books.

5. What is confusing about database schemas? What makes sense?
After completing this challenge, the basic ideas of the different relationships seems to make sense. It’s obvious why a one-to-many is the most common. For one-to-one and many-to-many, I understand the concept but I will need to see them in action to fully grasp them.