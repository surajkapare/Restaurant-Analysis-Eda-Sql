# Restaurant Analysis & Performance | EDA (Python) + SQL

End-to-end analysis of **9,551 restaurants across 141 cities and 15 countries**: data cleaning and exploratory analysis in Python, business questions answered in MySQL.

## Key findings
- **North Indian** is the most common cuisine (9.9% as an exact listing, 41.6% when multi-cuisine listings are split).
- **New Delhi** has the most restaurants (5,473, 57.3% of the dataset). Delhi NCR cities make up 83% of listings.
- The raw SQL answer for "highest average rating" is **Inner City (4.9)**, but it has only 2 restaurants. With 20+ restaurants, **London (4.54)** leads.
- **3-4** is the most common rating range (45.9%). 22.5% of restaurants are unrated (rating 0).
- Restaurants with table booking or online delivery have higher average ratings.

## Repository structure
```
restaurant-analysis-eda-sql/
|-- README.md
|-- data/
|   `-- cleaned_data.csv
|-- notebooks/
|   `-- Cognifyz_IT_Solutions.ipynb
|-- sql/
|   `-- SQL_business_answers.sql
`-- presentation/
    `-- Restaurant_Analysis_EDA_SQL_Carousel.pdf
```

## Tech stack
Python (Pandas, NumPy, Matplotlib, Seaborn), Jupyter Notebook, MySQL.

## How to run
1. Clone the repo and install: `pip install pandas numpy matplotlib seaborn jupyter`
2. Open `notebooks/Cognifyz_IT_Solutions.ipynb` and set the file path in the first `read_csv` cell to your copy of the raw dataset (or load `data/cleaned_data.csv` and skip the cleaning cells).
3. For SQL: import `data/cleaned_data.csv` into a MySQL table named `cleaned_data`, then run `sql/SQL_business_answers.sql`.

## Data cleaning summary
- Fixed encoding issues and standardised column names (snake_case)
- Filled missing `cuisines` values with the mode
- Checked duplicates (none found)
- Capped outliers in `average_cost_for_two` and `votes` using the IQR method (votes max = 320 because of this cap)
- Converted flag and rating columns to categorical types

## Limitations
Votes are capped, 22.5% of restaurants are unrated, the "review" analysis uses rating labels rather than real review text, chains are detected by name matching, and the data is about 90% India.

## Author
**Suraj Kapare** | Data Analysis project, Cognifyz IT Solutions
