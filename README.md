# H&M Customer Retention & Predictive CRM Analytics

Customer retention and predictive CRM analytics using SQL, Python, machine learning, and Tableau to segment customers, predict 120-day repurchase propensity, and support targeted CRM strategies.

## Project Overview

This project analyzes nearly 1 million H&M customers and more than 31 million transactions to understand customer retention and identify which Recent Occasional customers are most likely to purchase again within the next 120 days.

The analysis combines customer segmentation, behavioral profiling, propensity modeling, and CRM strategy design to support more targeted and efficient retention efforts.

## Key Results

- 985,967 customers analyzed
- 31M+ transactions
- 4 lifecycle customer segments identified
- 328,787 Recent Occasional customers identified as the priority retention cohort
- 65,758 customers included in the held-out test set
- 37.9% observed 120-day repurchase rate
- 65.3% repurchase rate among the top propensity decile
- 16.4% repurchase rate among the bottom propensity decile
- 48.9 percentage-point separation between highest- and lowest-propensity customers

## Business Question

How can H&M identify Recent Occasional customers who are likely—or unlikely—to purchase again in the next 120 days, so CRM resources can be allocated more intelligently?

## Analytical Approach

1. Customer segmentation using RFM features and K-Means
2. Segment prioritization based on customer size and future repurchase behavior
3. Customer profiling and behavioral feature selection
4. Propensity modeling using Logistic Regression
5. Comparison with a nonlinear machine learning challenger
6. Propensity decile validation
7. CRM strategy development based on predicted repurchase likelihood

## CRM Strategy

The final model supports differentiated CRM treatment:

- **High propensity:** low-cost nurture, personalized recommendations, loyalty progress, and reduced unnecessary discounting
- **Mid propensity:** habit-building, category discovery, timed reminders, and light incentive testing
- **Low propensity:** selective win-back campaigns, stronger value-led offers, preference refresh, and controlled contact frequency

The model is designed to prioritize customers based on natural repurchase likelihood. Randomized holdout testing should then be used to measure the incremental impact of specific CRM actions.

## Tools

- SQL
- Python
- Pandas
- Scikit-learn
- Logistic Regression
- K-Means Clustering
- HistGradientBoosting
- Tableau

## Project Resources

- [View Full Report](./report/HM_Customer_Retention_Predictive_CRM_Report.pdf)
- [Explore Interactive Tableau Dashboard](https://public.tableau.com/app/profile/chloe.liu3692/viz/HMDashboard_17890951816630/HMRepurchasePropensityPredictiveCRMDashboard)
- [SQL Scripts](./sql/)
- [Python Analysis](./python/)

## Data Source

[H&M Personalized Fashion Recommendations — Kaggle](https://www.kaggle.com/competitions/h-and-m-personalized-fashion-recommendations/data)

This project uses the customer, article, and transaction data provided in the H&M Personalized Fashion Recommendations competition dataset.

Raw competition data is not included in this repository. Please access the original dataset through Kaggle.

## Author

**Chloe Liu**  
Customer Retention & Marketing Analytics Portfolio
