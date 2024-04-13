# Remote Working Insights for Data Scientists on Upwork.com - SQL | Python | Tableau

#### I am pleased to present 'Remote Working Insights of Geographic Arbitrage for Data Scientists: A Data Analysis Project,' which utilizes SQL, Python, and Tableau. This project marks a significant step in my transition to a Business Analyst role. It combines rigorous data analysis with sophisticated visualization techniques to deliver comprehensive insights into the remote working conditions of data scientists across various countries.

## Outline
- Introduction
  - Problem Statement
  - Technologies Used
  - Aims Grid
- Data Preparation by SQL
  - Data Sources
  - Data Cleaning
- Data Analysis by Python
- Result Interpretation
  - Statistical Summary
  - Recommendation
- Visualization by Tableau
- Conclusion

## Introduction
Upwork.com is a key platform for data scientists pursuing remote work. This project explores geographic arbitrage by analyzing salaries, living costs, and taxes across different global regions. Using data from Upwork and other sources, the analysis identifies the most economically advantageous locations for remote data scientists. By integrating metrics like internet quality and local taxation, this initiative aims to optimize economic benefits and support strategic decision-making for data scientists working remotely.

### Problem Statements
- Q1: Which locations offer the best balance between earnings and living expenses?
- Q2: Which regions provide the most favorable tax environments for data scientists?
- Q3: Where can data scientists enjoy the highest net disposable income after accounting for living costs and taxes?
- Q4: How does the availability of jobs correlate with local internet speeds?
- Q5: Which regions offer the most conducive conditions for remote work?

### Technologies used
- Microsoft Access  | SQL Server
- Python
- Tableau
- Statistics

This project analyses remote working conditions for data scientists using data from Upwork.com. The process involved extracting data with SQL, cleaning and transforming it in a staging area, and analyzing it using Python in Jupyter Notebook. Insights were visualised through a Tableau dashboard, providing actionable business intelligence on geographic arbitrage opportunities for data scientists.

### Aims Grid
#### 1. Purpose: What? Why? What do we want to achieve?
To conduct a comprehensive analysis of geographic arbitrage for remote-working data scientists. To evaluate and compare the economic benefits such as salaries, cost of living, and tax conditions across different global locations. The aim is to illustrate the most advantageous locations for remote data scientists, facilitating informed, strategic decision-making to enhance the work conditions and economic benefits.

#### 2. Stake Holders: Who will be involved?
- Data Scientist interested in remote work opportunities
- Policy maker
- Platform providers like Upwork.com

#### 3. End Result: What do we want to achieve?
A detailed report, a set of actionable insights and recommendations.

#### 4. Success Criteria: What will be our success criteria?
- Establishment of a clear, ranked list of locations with the best overall conditions for remote data scientists.
- Positive feedback and utility from the intended audience (data scientists) about remote work locations.
- A published set of recommendations that are adopted by at least one company or have influenced policy adjustments.

## Data Preparation 
The primary dataset from Upwork.com provides foundational information about data scientists' salaries, job frequency, and the nature of remote work engagements. However, to perform a comprehensive analysis, it is crucial to incorporate broader factors.The additional datasets were chosen by providing context on living costs, tax rates, and internet quality across different locations. 
### Data Source
- upwork_data_scientists
- cost-of-living_v2
- economic_freedom
- internet broadband and mobile speeds by country
- World Happiness Index by Reports 2013-2023 no nulls
### Data Cleaning
Due to constraints in my current laptop setup, MySQL is unavailable. Nevertheless, given the manageable size of the data, I have opted to import it into Microsoft Access. As analysts, it's crucial for us to remain flexible and adapt our methods to ensure that our work progresses smoothly under any circumstances.

1. Create a table
This query creates a new table named 'geographic_arbitrage' with columns for country data, number of data scientists, various cost metrics, happiness index, internet speeds, tax burden, average hourly rate, job success rate, and total hours and jobs.
```sql
CREATE TABLE geographic_arbitrage (
    Country TEXT(255),
    NumDataScientists INTEGER,
    AvgMcDonaldsMealCost DOUBLE,
    AvgInternetCost DOUBLE,
    HappinessIndex DOUBLE,
    BroadbandMbps DOUBLE,
    MobileMbps DOUBLE,
    TaxBurden DOUBLE,
    AvgHourlyRate DOUBLE,
    AvgJobSuccess DOUBLE,
    Avgtotalhours INTEGER,
    Avgtotaljobs INTEGER
);
```

2. 
```sql
SELECT * FROM customers;
```
3. 
```sql
SELECT * FROM customers;
```
4. 
```sql
SELECT * FROM customers;
```
5. 
```sql
SELECT * FROM customers;
```
6. 
```sql
SELECT * FROM customers;
```




## Data Analysis by Python
### Data Overview
The dataset contains the following columns:
Country: Name of the country.
NumDataScientists: Number of data scientists surveyed.
AvgMcDonaldsMealCost: Average cost of a McDonald's meal in USD.
AvgInternetCost: Average monthly internet cost in USD.
HappinessIndex: A national happiness index.
BroadbandMbps: Average broadband speed in Mbps.
MobileMbps: Average mobile internet speed in Mbps.
TaxBurden: General tax burden percentage.
AvgHourlyRate: Average hourly rate for data scientists in USD.
AvgJobSuccess: Average job success rate on a scale of 0 to 1.
Avgtotalhours: Average total hours worked by the data scientists.
Avgtotaljobs: Average total jobs completed by the data scientists.

#### Import data
Data is loaded into a pandas DataFrame from a structured Excel file, ensuring the availability of a robust dataset for analysis.

#### Missing Data&Inconsistencies
Thorough checks for missing values and inconsistencies are performed, confirming data integrity.

#### Variable Classification
Variables are categorized based on their nature and roles (e.g., categorical vs. numeric), facilitating tailored analytical approaches for different data types.

#### Exploratory Data Analysis
Descriptive Statistics
Offers basic statistical summaries that provide a snapshot of the central tendencies and variability within the dataset.

#### Distribution Analysis
Investigates the distribution of key variables to identify patterns or anomalies in the data.

#### Correlation Analysis
Examines the relationships between pairs of variables to understand the dynamics and dependencies among them.

#### Metric Visualization
Uses graphs such as histograms and heatmaps to visualize data distributions and correlations, enhancing the interpretability of complex relationships.

#### Composite Score Development
Constructs a composite score combining various metrics to assess remote work viability across different geographies.

#### Regression Analysis 
Presents the results from a regression analysis exploring the relationship between the newly developed composite score and the happiness index, aiming to identify predictive relationships.

## Result Interpretation 
### Statistical Summary
This dataset spans 25 countries and includes metrics like the number of data scientists, McDonald's meal cost, internet costs, happiness index, broadband and mobile Mbps speeds, tax burden, average hourly rate, job success rate, total hours worked, and number of jobs. Key findings include:

#### 1. Economic and Job-Related Insights
The average presence of 5 data scientists per country peaks at 39 in one nation. Internet costs average at $32.44, with broadband speeds around 47.51 Mbps and a high tax burden of 77.5%. The average hourly rate is $42.16, and the job success rate is 94.2%. Notably, higher wages don’t always correlate with lower living costs or higher job success rates, reflecting diverse economic conditions. Turkey, Ukraine, and the USA are optimal for data scientists based on salary-to-cost-of-living ratios and net disposable income.

#### 2. Remote Work Conditions
A "Remote Work Score" combines broadband speed, mobile Mbps, and internet costs to evaluate remote working environments. Top scores were observed in Ukraine, Finland, and Turkey, indicating excellent remote work infrastructure.

#### 3. Correlation and Regression Analysis
The "Composite Score," which integrates all key metrics, correlates weakly with the happiness index (R-squared = 0.103), suggesting other factors might influence happiness. This score, however, indicates a significant positive relationship with the happiness index, emphasizing the role of balanced economic and infrastructure metrics in enhancing quality of life.

### Recommendations
1. For Governments, improve remote work environments by upgrading digital infrastructures, such as broadband and mobile internet services, including subsidies for high-speed internet in rural areas.
2. For Policy Makers, revise tax policies to benefit remote workers, possibly including deductions for home office expenses and internet bills.

## Visualization
Tableau Public Dashboards: 

## Conclusion
### Regular Data Review
For Analysts and Stakeholders: Continually monitor and review the data on remote work conditions to stay responsive to changing trends and employee feedback. This iterative analysis can help refine policies and strategies to better support remote workers.
