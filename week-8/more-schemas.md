![One-to-One Schema] (imgs/movies_schema.png)  

This schema is a one-to-one example because each movie may not yet know what the box office gains are or how many tickets are sold on opening weekend. If the movie is coming out in the future these would just be empty in the overall movie table, so you may want to keep them in a separate table.   

* Many to Many Grocery Schema:  

![Many-to-Many Schema] (imgs/grocery_schema.png)   

## Reflection  

* What is a one-to-one database?  
	A one to one database is one where each row in a table corresponds to one row in another table. Each record in one table will not be repeated in another. Each item will be paired with another in the other table. 

* When would you use a one-to-one database? (Think generally, not in terms of the example you created).  
	You'd use a one-to-one database when each record is paired with another. Most of the time it seems easy to think about this in a single table, but if there would be certain information that would only be available to some records, you may want to keep this in another table so there aren't a lot of blank spaces. It's a good idea to save space if possible. 

* What is a many-to-many database?  
	A many to many database is one where records in different tables are not paired, and can be associated in multiple ways. You can typically identify it by looking for a join table that matches up the IDs from each individual table. 

* When would you use a many-to-many database? (Think generally, not in terms of the example you created).  
	You'd use this when a record in one table can be associated with many records in another table, and vice versa. If they need to be associated in multiple ways, you'd need to create a join table. 

* What is confusing about database schemas? What makes sense?  
	I'm pretty confused about when to use each one. I think it'd be a little easier once you'd actually trying to store the information, but conceptually doing it without a concrete example in my head is hard for me. 

	I think the actual linking of tables makes a lot of sense. My last job taught me some basic SQL searching, but didn't get into each of the different kinds of schemas. 



