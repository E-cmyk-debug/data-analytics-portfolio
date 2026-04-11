# NBA Players Data Analysis

Exploratory Data Analysis (EDA) on NBA player data using Python — uncovering insights on team composition, player positions, age distribution, salary expenditure, and the relationship between age and earnings.

> Built as part of a data analytics course to demonstrate real-world data wrangling, groupby analysis, correlation, and visualization skills.


##  Tools & Technologies

| Tool | Purpose |
|------|---------|
| Python | Core programming language |
| Pandas | Data manipulation and groupby analysis |
| NumPy | Numerical operations |
| Matplotlib | Data visualization |
| Seaborn | Scatter plot and correlation visualization |

## Dataset

- **Source:** Provided as part of a structured data analytics course
- **Size:** 458 NBA player records, 10 columns
- **Key columns used:** `Name`, `Team`, `Position`, `Age`, `Height`, `Weight`, `College`, `Salary`


##  Business Questions Answered

1. How are players distributed across each team?
2. What is the distribution of players by playing position?
3. What is the age group distribution of players?
4. Which team has the highest total salary expenditure?
5. Which position commands the highest total salary?
6. Is there a correlation between player age and salary?


##  Data Cleaning & Transformation

- Identified and handled missing values in `Salary` (11 nulls) and `College` (84 nulls) columns
- Detected corrupted `Height` column (stored as datetime strings) and replaced with valid numeric height values for analysis
- Created a new `age_group` column using `pd.cut()` to bin players into age brackets (20–29, 30–39, etc.)
- Ensured correct data types for all columns before aggregation and plotting


##  Key Insights

- **New Orleans Pelicans** lead with the highest player count (19 players, ~4.1%), followed by **Memphis Grizzlies** (18, ~3.9%); most other teams are evenly represented at ~15 players each
- **Shooting Guard (SG)** is the most common position (102 players), while **Center (C)** is the least common (79 players)
- **75.5% of players (346 out of 458)** fall in the 20–29 age group, reflecting the sport's reliance on young talent; no players are aged 40 or above
- **Cleveland Cavaliers** have the highest total salary expenditure among all 30 teams
- **Centers (C)** account for the highest total salary spend by position, highlighting the premium placed on elite big men
- **Correlation between age and salary is 0.21** — a weak positive relationship, meaning salary is influenced more by performance and position than age alone


## 📷 Visualizations

### 🔹 Distribution of Players by Team
<img width="1089" height="891" alt="team_distribution" src="https://github.com/user-attachments/assets/38597531-e7c1-4d44-9c85-7088eec61721" />

### 🔹 Distribution of Players by Position
<img width="1089" height="695" alt="position_distribution" src="https://github.com/user-attachments/assets/f36d0e27-346c-4699-9c01-6e4e226abd6c" />

### 🔹 Age Group Distribution
<img width="1089" height="722" alt="age_distribution" src="https://github.com/user-attachments/assets/1925b6c1-2f1f-402a-8bce-355a43aceb7e" />

### 🔹 Salary Expenditure by Team and Position
<img width="1746" height="742" alt="salary_expenditure" src="https://github.com/user-attachments/assets/4a709c2b-315d-46cf-aa8e-f96bf06617b4" />

### 🔹 Correlation between Age and Salary
<img width="1089" height="687" alt="age_vs_salary" src="https://github.com/user-attachments/assets/23541c8e-71b1-47da-846d-4a2c54878cdb" />


## Project Structure

```
NBA_Data_Analysis/
│
├── NBA_Analysis.ipynb              # Jupyter Notebook with full analysis
├── screenshots/
│   ├── team_distribution.png
│   ├── position_distribution.png
│   ├── age_distribution.png
│   ├── salary_expenditure.png
│   └── age_vs_salary.png
└── README.md
```


## How to Run

1. **Clone the repository**

   ```bash
   git clone https://github.com/your-username/NBA_Data_Analysis.git
   cd NBA_Data_Analysis
   ```

2. **Install required libraries**

   ```bash
   pip install pandas numpy matplotlib seaborn openpyxl
   ```

3. **Add your dataset**

   Place your NBA Excel file in the project folder and rename it:

   ```
   nba_data.xlsx
   ```

   Then update the file path in the notebook:

   ```python
   file_path = "nba_data.xlsx"
   ```

4. **Run the notebook**

   Open `NBA_Analysis.ipynb` in Jupyter Notebook or JupyterLab and run all cells.

## Conclusion

This project demonstrates practical data analytics skills, including data cleaning, feature engineering with `pd.cut()`, group-level aggregation with `groupby()`, correlation analysis, and multi-chart visualization — all applied to a real-world sports dataset.

---

##  Future Improvements

- [ ] Normalise salary by team payroll cap to compare relative spending
- [ ] Analyse performance metrics (points, assists, rebounds) alongside salary
- [ ] Build an interactive dashboard using Power BI or Plotly Dash
- [ ] Add a regression model to predict player salary from age, position, and performance


## Author

**Dhanya Vijayakumar**  
Aspiring Data Analyst  
www.linkedin.com/in/dhanya-v-a7114628b
