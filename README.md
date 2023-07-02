# Study Case. Creating index, categories and BI analyses.

**This study case has come to me as a question of what would be my approach for creating indexes, categories and BI analyses during a database implementation.**


## Step 1


First, I would extract the data from the actual system and understand what kind of index I could use. This would be further discussed with the management to align what would be interesting to have in the index to identify the products in their portfolio and get their approval.

In the following example, I extracted a sample of products and tried to understand what we could use as an Index:


![Catalogue Angle Bar](https://github.com/Daniels2023/studyCase/assets/124798004/98671329-6613-4124-93ef-77dc4b232cbe)


In this sample, we can see that we already have the type of product (BA 304 and BA 316), thickness and size. For this case, I came up with the idea of having as an index **type + thickness + size**. So I imported this sample into an Excel spreadsheet. Here is what I got:


![Excel table](https://github.com/Daniels2023/studyCase/assets/124798004/ff61f0a9-d0b5-4d59-8453-1c14869ad424)


## Step 2


To create an index with type + thickness + size I imported the Excel spreadsheet into Python and use the library pandas to manipulate and create the index. Here I also observed that a category would also be created, as I already knew that these products were angle bars, so I created a new column with that category. This is the final result for product 304:


![image](https://github.com/Daniels2023/studyCase/assets/124798004/1de37596-43fc-4da1-83c5-576fddd5ddb3)


The same was done for product 316:


![image](https://github.com/Daniels2023/studyCase/assets/124798004/8ef1da54-4763-4a62-b5a6-d246731aec1d)


So now, we have a new index and distinct categories for both products, which would be great for further BI analyses.


## Advanced step - Creating a database.



