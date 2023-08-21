# Data Professionals in Focus: Brazil vs. USA

### Comparative Analysis of Roles, Experience Levels, and Salary Ranges

<img src="image/cover_loyalty_program.png" width="1000">

## 1. Abstract

This project aims to provide a comprehensive analysis comparing data professionals in Brazil and the USA. Through our analysis, we dive deep into various roles, experience levels, and salary ranges, offering insights into the landscape of data professionals in these two countries.

The foundation of our analysis lies in two distinct surveys, both sourced from Kaggle. These datasets were stored and managed within the Google Cloud Platform (GCP). Leveraging the power of BigQuery for data processing and DBT for data transformation, we synthesized and streamlined the data to derive meaningful insights. The culmination of our efforts is visualized in a detailed dashboard crafted using Looker, which provides a comparative view of the data landscape between Brazil and the USA.

<img src="image/cover_loyalty_program.png" width="1000">

## 2. Methodology

The data is stored on GCP (Google Cloud Platform) and processed using BigQuery as our Data Warehouse. We utilized DBT (Data Build Tool) for data transformation, organization, and quality checks. Finally, visualizations and dashboards were created using Looker to facilitate data-driven decision making.

<img src="image/cover_loyalty_program.png" width="1000">


## 3. Business Understanding

### 3.1. Context

With the global demand for data professionals increasing, there's a need to understand the market landscape in different regions. This analysis offers a comparative view of two major markets: Brazil and the USA.

### 3.2. Business assumption:

To streamline our analysis and make the initial version of this project more manageable, we made the following assumptions:

1. **Roles in Focus**: We confined our analysis to three primary roles within the data domain:
   - Data Analyst
   - Data Scientist
   - Data Engineer

2. **Experience Levels**: Professionals were categorized into three experience brackets based on their years in the field:
   - **Entry-Level**: 0 to 3 years of experience
   - **Mid-Level**: 3 to 6 years of experience
   - **Senior-Level**: More than 6 years of experience

These assumptions were made to simplify our analysis and provide a clearer, more focused view of the data professionals' landscape in both countries. Future iterations of this project may expand to include a broader range of roles and experience levels.

## 4. Data Analysis

## 4. Data Analysis

In this section, we will delve into the insights derived from the data, supported by graphical representations. Three primary dimensions were analyzed: job roles, experience levels, and salary ranges.

### 4.1. Job Roles Distribution

The USA has a significant 43.23% of its data professionals classified as Data Engineers, while Brazil has a lesser proportion at 29%. On the flip side, Brazil has a higher concentration of Data Analysts, standing at 37.9%, compared to the USA's 24.85%.

**Analysis**: The higher proportion of Data Engineers in the USA could suggest a more mature data market leaning towards specialized roles, potentially driven by the need for big data expertise, infrastructure management, and advanced analytics solutions. Brazil's dominant Data Analyst population could indicate a market that's still in the phase of understanding and deriving value from data, with advanced specializations like Data Engineering and Data Science still on the rise.

### 4.2. Experience Levels Distribution

A significant difference is observed in the experience levels. The USA boasts a whopping 78% of its data professionals in the Senior bracket. In contrast, Brazil's landscape is dominated by Juniors, constituting 50% of the populace, followed by Mid-level professionals at 36%.

**Analysis**: The high prevalence of Senior professionals in the USA underscores the country's long-standing engagement with data-driven roles, reflecting a mature market with seasoned professionals. Brazil's Junior-heavy demographic suggests a burgeoning market, witnessing a newer influx of individuals entering the data domain, possibly due to recent growth, awareness, and education in data-related fields.

### 4.3. Salary Ranges

When it comes to remuneration, there's a stark contrast. A significant 83% of American data professionals earn above 100k USD annually. In comparison, Brazilian professionals have a more modest earning landscape: 37.9% earn between 20k and 40k USD, and 35.7% earn between 10k and 20k USD annually.

**Analysis**: The salary disparities reflect the economic differences, living standards, and market maturity between the two countries. The USA, with its advanced tech industry, higher cost of living, and mature data market, offers higher salaries. Brazil's emerging market, coupled with a lower cost of living and the influx of newer professionals (as evidenced by the experience distribution), leads to comparatively modest salary ranges. However, it's crucial to contextualize these figures within each country's economic framework to draw fair comparisons.

---

These analyses shed light on the differing landscapes of data professionals in Brazil and the USA, offering valuable insights for businesses, recruiters, and professionals in the field.


## 8. Deployment

Deployed the final datasets to Looker, where dashboards and visualizations were created to provide a comparative view of the data professionals in Brazil and the USA.

## 9. Conclusion

### 9.1. Business Results

### 9.2. Next Steps

## 10. References
* [State of Data](https://www.kaggle.com/datasets/datahackers/state-of-data-2022)
* [US Data Field Salaries](https://www.kaggle.com/datasets/arnabchaki/data-science-salaries-2023)
