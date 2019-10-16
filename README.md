# Group Members
* Chris Nguyen (Team Leader): [@c-l-nguyen](https://github.com/c-l-nguyen)
* Hayley Jellison: [@hayleyjellison](https://github.com/hayleyjellison)
* Hazel Despain: [@hazeldespain](https://github.com/hazeldespain)
* Nathan Wong (Git Master): [@toestie](https://github.com/toestie)

![TouristBanner](./Resources/images/touriststock.jpeg)

# Project Proposal
The idea for this project is comparing tourist count versus local population count through the years 2011 - 2017. There is no one particular data set that has all the data that we are interested, so we will curate and compile data from multiple sources into one database that has everything we want by using ETL (extract, transform, load.

### Data Sources (Extract):
* Number of International Visitors per city (from pdfs from MasterCard Index of Global Destination Cities)
The original format of the GDC data was a PDF.
* World Population Review (http://worldpopulationreview.com/world-cities/amsterdam-population/)
The original format was a table on a website. The results pulled were just for one city to build a framework.
* Google Maps API (geocode)
The original format was the API.

### Cleaning and Aggregation (Transform):
For the Number of International Visitors per city data:
Manually converting the charts in the PDF files into CSV files. One of the set backs we ran into was finding accurate data as they updated the final results several years after the initial publications.
* For the World Population Review data:
Using Python, Beautiful Soup, and Splinter to scrape and read the table, then converting it into a CSV file.
* For increased usability, we took the CSV files from the Number of International Visitors data and used Google Maps data to match each city to a latitude and longitude.
* To fill in the missing years in the population data, we used Interpolation to estimate the population in the intermediate years.

### Compiled Data (Load):
All of the data can then be linked by city names for a table showing:
* City Name
* Population Count
* International Visitor Count

The data was loaded into PgAdmin. In our schema, the primary key for the number of tourists and total tourist expenditures tables is the city. We chose SQL because it made it easier to structure the data for future use.
Collapse
