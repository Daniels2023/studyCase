# Study Case. Creating index, categories and BI analysis.

**This study case has come to me as a question of what would be my approach for creating indexes, categories and BI analysis during a database implementation.**


## Step 1


First, I would extract the data from the actual system and understand what kind of index I could use. This would be further discussed with the management to align what would be interesting to have in the index to identify the products in their portfolio and get their approval.

In the following example, I extracted a sample of products and tried to understand what we could use as an Index:


![Catalogue Angle Bar](https://github.com/Daniels2023/studyCase/assets/124798004/98671329-6613-4124-93ef-77dc4b232cbe)


In this sample, we can see that we already have the type of product (BA 304 and BA 316), thickness and size. For this case, I came up with the idea of having as an index **type + thickness + size**. So I imported this sample into an Excel spreadsheet. Here is what I got:


![Excel table](https://github.com/Daniels2023/studyCase/assets/124798004/ff61f0a9-d0b5-4d59-8453-1c14869ad424)


## Step 2


To create an index with type + thickness + size I imported the Excel spreadsheet into Python and use the library pandas to manipulate and create the index. Here I also observed that a category would also be created, as I already knew, these products were angle bars, so I created a new column with that category. This is the final result for product 304:


![image](https://github.com/Daniels2023/studyCase/assets/124798004/1de37596-43fc-4da1-83c5-576fddd5ddb3)


The same was done for product 316:


![image](https://github.com/Daniels2023/studyCase/assets/124798004/8ef1da54-4763-4a62-b5a6-d246731aec1d)


So now have a new index and distinct categories for both products, which would be great for further BI analysis.


## Advanced step - Creating a database.


For this purpose, I would recommend a data engineering consultant to have a look at the system, and the dataflow and suggest what database would be a great fit for company goals. This involves performance, growth expectations, training the team to use the new database, documentation, etc. It is not a simple project but it can be achieved with the right management approach and mindset, and once completed the result would be a unified data centre for inventory, sales, human resources, etc. As I can demonstrate below, here is just a simple example of how 3 departments (inventory, sales, and human resources) could be integrated with a single database environment:


![ERD_StudyCase](https://github.com/Daniels2023/studyCase/assets/124798004/a8bf9eac-ea11-4ee1-9be5-fcc2ecebd5dc)



Above we can see 3 departments connected all with your index column and descriptive columns, this diagram could be further uploaded into a relational database like PostgreSQL.

Below is an example of how that could be achieved:


![PgSQL-1](https://github.com/Daniels2023/studyCase/assets/124798004/2dc53b2c-8209-409e-a082-2ddbe086015b)


Then a SQL query to create the tables in the database:


![PgSQL-2](https://github.com/Daniels2023/studyCase/assets/124798004/3695ca3d-5911-4fca-ad50-c8928b1da5fa)


More steps have to be done after the creation of a database as mentioned before, this is a more complex step and it is not going to be covered in this study case.

## Final step - BI Analysis


BI analysis can be achieved with or without an integrated database, if data analysis starts to play an important role in the company so, it is recommended a unified database as it can provide data consistency, standardization and accessibility. But in any circumstance, Power BI can connect with any dataset from different data sources. In this study case, I provided a simple sales overview of everything we cover until here so far.


![PowerBI overview](https://github.com/Daniels2023/studyCase/assets/124798004/77beb31a-1196-4054-88ae-3c6815a9e98f)


In this **Power BI** overview analysis, we can observe:


***1 - The company achieved so far AUD 40k in Total Sales.***

***2 - Thomas is the top seller.***

***3 - BA304_10_100x100 is the most chosen product by the customers.***

***4 - The company had an increase in Sales of about 25.89% from 2022 to 2023.***

***5 - Bob is the second top best seller with a difference of less than AUD 100.00.***

***6 - The products that also have a significant sold quantity were BA304_6_40x40 and BA 316_3_20x20, both with respectively 3,600 and 2,588 sold quantities.***



"*" *The data, analysis and any information in this study should not be considered real-world data* "*"

Thanks for reading
