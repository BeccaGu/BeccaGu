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
  - Insight
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
1. Purpose: What? Why? What do we want to achieve?

To conduct a comprehensive analysis of geographic arbitrage for remote-working data scientists. To evaluate and compare the economic benefits such as salaries, cost of living, and tax conditions across different global locations. The aim is to illustrate the most advantageous locations for remote data scientists, facilitating informed, strategic decision-making to enhance the work conditions and economic benefits.

2. Stake Holders: Who will be involved?

- Data Scientist interested in remote work opportunities
- Policy maker
- Platform providers like Upwork.com

3. End Result: What do we want to achieve?

A detailed report, a set of actionable insights and recommendations.

4. Success Criteria: What will be our success criteria?

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
SQL Query

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
### Data Coverage and Variables:
The dataset includes 25 countries with metrics such as number of data scientists, cost of living (e.g., McDonald's meal cost), internet costs, happiness index, broadband and mobile Mbps, tax burden, average hourly rate, job success rate, total hours worked, and number of jobs.

### Statistical Summary:
On average, countries have around 5 data scientists, with a maximum of 39 in one country.
Average internet cost across the countries is $32.44, while the average broadband speed is about 47.51 Mbps.
The dataset shows a high average tax burden of 77.5%, with an average hourly rate of $42.16 and a job success rate of 94.2%.

### Economic and Job-related Insights:
Countries with higher average hourly rates do not necessarily have low living costs or high job success rates, indicating diverse economic conditions.
The analysis provides specific insights into countries with favorable conditions for data scientists based on salary-to-cost-of-living ratios, tax conditions, and net disposable income. For instance, Turkey, Ukraine, and the United States feature prominently as favorable destinations based on these metrics.

### Remote Work Conditions:
The document also calculates a "Remote Work Score" based on broadband speed, mobile Mbps, and internet costs. Countries like Ukraine, Finland, and Turkey scored highest, suggesting they have the best conditions for remote work among the surveyed nations.

### Correlation and Regression Analysis:
A regression analysis explores the relationship between a constructed "Composite Score" (integrating all key metrics) and the happiness index. The model indicates a low R-squared value of 0.103, suggesting that the composite score only explains about 10.3% of the variance in happiness index among these countries.

### Insights
Composite Score Development
The development of a composite score that incorporates broadband speed, mobile Mbps, internet cost, and other economic indicators allows for an integrated assessment of remote work conditions.
Countries scoring high on the composite score, such as Turkey and Ukraine, not only offer good digital infrastructure but also favorable cost-of-living conditions relative to salary.

### Regression Analysis Results
The regression analysis demonstrates a significant, albeit moderate, positive relationship between the composite score and the happiness index. This finding reinforces the importance of balanced economic and infrastructure metrics in supporting a high quality of life.

### Recommendation
Enhancing Digital Infrastructure
For Governments: Invest in upgrading digital infrastructure, especially broadband and mobile internet services, to improve the quality of remote working environments. This can also include subsidies for high-speed internet in rural and underserved areas to attract remote workers.

### Improving Economic Conditions
For Policy Makers: Consider revising tax policies to create more favorable conditions for remote workers which can include tax deductions on home office expenses and internet bills.
For Employers: Implement flexible salary structures that consider local cost-of-living and tax conditions to maintain high levels of employee engagement and productivity.

### Targeted Support and Resources
For HR Departments: Develop targeted support programs that address the specific needs of remote workers, such as mental health support, ergonomic assessments for home offices, and continuous professional development opportunities.
Data-Driven Location Strategies
For Business Strategists: Use data-driven insights to determine the best countries or cities for expanding remote teams, considering both economic factors and infrastructure quality. This approach can maximize employee satisfaction and retention.
### Regular Data Review
For Analysts and Stakeholders: Continually monitor and review the data on remote work conditions to stay responsive to changing trends and employee feedback. This iterative analysis can help refine policies and strategies to better support remote workers.

## Visualization
Tableau Public Dashboards: 

## Conclusion
