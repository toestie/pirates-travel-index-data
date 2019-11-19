-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "expenses" (
    "City" VARCHAR(100)   NOT NULL,
    "Year" INTEGER   NOT NULL,
    "Overnight_International_Visitor_Spend_in_USD_Billions" FLOAT   NOT NULL,
    CONSTRAINT "pk_expenses" PRIMARY KEY (
        "City","Year"
     )
);

CREATE TABLE "tourists" (
    "City" VARCHAR(100)   NOT NULL,
    "Year" INTEGER   NOT NULL,
    "Overnight_International_Visitors_in_Millions" FLOAT   NOT NULL,
    CONSTRAINT "pk_tourists" PRIMARY KEY (
        "City","Year"
     )
);

CREATE TABLE "city" (
    "City" VARCHAR(100)   NOT NULL,
    "Country" VARCHAR(100)   NOT NULL,
    "Latitude" FLOAT   NOT NULL,
    "Longitude" FLOAT   NOT NULL,

    CONSTRAINT "uc_city_City" UNIQUE (
        "City"
    )
);

ALTER TABLE "expenses" ADD CONSTRAINT "fk_expenses_City" FOREIGN KEY("City")
REFERENCES "city" ("City");

ALTER TABLE "tourists" ADD CONSTRAINT "fk_tourists_City" FOREIGN KEY("City")
REFERENCES "city" ("City");

