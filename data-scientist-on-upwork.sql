{\rtf1\ansi\ansicpg1252\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww28600\viewh18000\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 /* Step 1: Create a table */\
/* This query creates a new table named 'geographic_arbitrage' with columns for country data, number of data scientists, various cost metrics, happiness index, internet speeds, tax burden, average hourly rate, job success rate, and total hours and jobs. */\
CREATE TABLE geographic_arbitrage (\
    Country TEXT(255),\
    NumDataScientists INTEGER,\
    AvgMcDonaldsMealCost DOUBLE,\
    AvgInternetCost DOUBLE,\
    HappinessIndex DOUBLE,\
    BroadbandMbps DOUBLE,\
    MobileMbps DOUBLE,\
    TaxBurden DOUBLE,\
    AvgHourlyRate DOUBLE,\
    AvgJobSuccess DOUBLE,\
    Avgtotalhours INTEGER,\
    Avgtotaljobs INTEGER\
);\
\
/* Step 2: Upwork data */\
/* This query aggregates data from the 'upwork_data_scientists' table to get the count of data scientists and average metrics per country. */\
SELECT upwork_data_scientists.Country, Count(*) AS NumDataScientists, Round(Avg(HourlyRate),2) AS AvgHourlyRate, Round(Avg(JobSuccess),2) AS AvgJobSuccess, Round(Avg(TotalHours),2) AS AvgTotalHours, Round(Avg(TotalJobs),2) AS AvgTotalJobs\
FROM upwork_data_scientists\
GROUP BY upwork_data_scientists.Country;\
\
/* Step 3: Change name */\
/* This query corrects country names in the 'economic_freedom' table to match with other data sources for consistency. */\
SELECT IIF(Name = 'T\'fcrkiye', 'Turkey',\
        IIF(Name = 'The Philippines', 'Philippines', Name)) AS Country, [Tax burden] AS TaxBurden\
FROM economic_freedom;\
\
/* Step 4: Change name and select data */\
/* Correct the country name in the 'world_happiness' table for the year 2022 and selects the happiness index. */\
SELECT IIf([Country] = 'Turkiye', 'Turkey', [Country]) AS CorrectedCountry, world_happiness.[Index] AS HappinessIndex\
FROM world_happiness\
WHERE world_happiness.[year] = 2022;\
\
/* Step 5: Data from internet speed */\
/* Join the 'internet_speed' table with the 'upwork_data_scientists' table to match internet speed data with countries where data scientists are located. */\
SELECT isp.country, isp.[broadband mbps], isp.[mobile mbps]\
FROM internet_speed AS isp INNER JOIN upwork_data_scientists AS uds ON isp.country = uds.Country;\
\
/* Step 6: Data from cost of living */\
/* Aggregate cost of living data by country, calculating the average cost of a McDonald's meal and internet, only considering records with a data quality flag of 1. */\
SELECT country, ROUND(AVG(x3), 2) AS AvgMcDonaldsMealCost, ROUND(AVG(x38), 2) AS AvgInternetCost\
FROM cost_of_living\
WHERE data_quality = 1\
GROUP BY country;\
\
/* Step 7: Insert data into table */\
/* Combine all the collected data into the 'geographic_arbitrage' table, aligning the different data points by country. */\
INSERT INTO geographic_arbitrage ( Country, NumDataScientists, AvgHourlyRate, AvgJobSuccess, AvgMcDonaldsMealCost, AvgInternetCost, AvgTotalHours, AvgTotalJobs, HappinessIndex, BroadbandMbps, MobileMbps, TaxBurden )\
SELECT uds.Country, uds.NumDataScientists, uds.AvgHourlyRate, uds.AvgJobSuccess, col.AvgMcDonaldsMealCost, col.AvgInternetCost, uds.AvgTotalHours, uds.AvgTotalJobs, h.HappinessIndex, isp.[Broadband Mbps], isp.[Mobile Mbps], ef.TaxBurden\
FROM (((aggregated_upwork_ds AS uds LEFT JOIN preprocessed_col AS col ON uds.Country = col.country) LEFT JOIN happiness AS h ON uds.Country = h.CorrectedCountry) LEFT JOIN internet_speed AS isp ON uds.Country = isp.country) LEFT JOIN change_name_eco AS ef ON uds.Country = ef.Country;\
\
/* Step 8: Filter for useful data */\
/* This query selects records from the 'geographic_arbitrage' table that meet certain criteria, such as having a minimum number of total jobs and non-null country values. */\
SELECT *\
FROM geographic_arbitrage\
WHERE Avgtotaljobs >= 5\
AND Country IS NOT NULL;\
\
/* Step 9: Add missing data */\
/* Add a default tax burden value for Yemen, where the data was missing. */\
UPDATE geographic_arbitrage SET TaxBurden = 91.5\
WHERE Country = 'Yemen';\
}