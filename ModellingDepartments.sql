-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/RGfOl4
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


-- Step 1: Create tables without foreign key constraints
CREATE TABLE Sales (
    "Transaction" SERIAL PRIMARY KEY,
    "SalesRepresentative" VARCHAR NOT NULL,
    "Product" VARCHAR NOT NULL,
    "Price" FLOAT NOT NULL,
    "Quantity" FLOAT NOT NULL,
    "Total" FLOAT NOT NULL,
    "Year" DATE NOT NULL
);

CREATE TABLE HumanResources (
    "Index" VARCHAR NOT NULL,
    "SalesRepresentative" VARCHAR NOT NULL,
    "Role" VARCHAR NOT NULL,
    "AdmissionYear" DATE NOT NULL,
    CONSTRAINT "pk_HumanResources" PRIMARY KEY ("Index")
);

CREATE TABLE angleBar304Index (
    "NewIndex" VARCHAR NOT NULL,
    "Thickness" FLOAT NOT NULL,
    "Size(mm)" VARCHAR NOT NULL,
    "Weight(kg/m)" FLOAT NOT NULL,
    "Category" VARCHAR NOT NULL,
    CONSTRAINT "pk_angleBar304Index" PRIMARY KEY ("NewIndex")
);

CREATE TABLE angleBar316Index (
    "NewIndex" VARCHAR NOT NULL,
    "Thickness" FLOAT NOT NULL,
    "Size(mm)" VARCHAR NOT NULL,
    "Weight(kg/m)" FLOAT NOT NULL,
    "Category" VARCHAR NOT NULL,
    CONSTRAINT "pk_angleBar316Index" PRIMARY KEY ("NewIndex")
);

-- Step 2: Add unique constraints to referenced columns
ALTER TABLE angleBar316Index ADD CONSTRAINT "uq_angleBar316Index_NewIndex" UNIQUE ("NewIndex");
ALTER TABLE Sales ADD CONSTRAINT "uq_Sales_Product" UNIQUE ("Product");

-- Step 3: Add foreign key constraints
ALTER TABLE Sales ADD CONSTRAINT "fk_Sales_SalesRepresentative" FOREIGN KEY ("SalesRepresentative")
REFERENCES HumanResources ("Index");

ALTER TABLE Sales ADD CONSTRAINT "fk_Sales_Product" FOREIGN KEY ("Product")
REFERENCES angleBar316Index ("NewIndex");

ALTER TABLE angleBar304Index ADD CONSTRAINT "fk_angleBar304Index_NewIndex" FOREIGN KEY ("NewIndex")
REFERENCES Sales ("Product");

