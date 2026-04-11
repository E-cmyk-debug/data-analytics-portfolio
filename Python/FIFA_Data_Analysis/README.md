# FIFA Player Data Analysis

Exploratory Data Analysis (EDA) on FIFA player data using Python — uncovering insights on player distribution, wages, clubs, and physical attributes.

> Built as part of a data analytics course to demonstrate real-world data cleaning, analysis, and visualisation skills.


## Tools & Technologies

| Tool | Purpose |
|------|---------|
| Python | Core programming language |
| Pandas | Data manipulation and cleaning |
| NumPy | Numerical operations |
| Matplotlib | Data visualization |


## Dataset

- **Source:** Provided as part of a structured data analytics course
- **Size:** ~18,000 FIFA player records
- **Key columns used:** `Nationality`, `Club`, `Wage`, `Height`, `Preferred Foot`, `Name`

> **Note:** The dataset (`fifa_data.csv`) is not included in this repository as it was provided exclusively for course use. To replicate this project, you may use a similar [FIFA dataset from Kaggle](https://www.kaggle.com/datasets/stefanoleone992/fifa-22-complete-player-dataset).


## Business Questions Answered

1. Which country has the highest number of players?
2. Which clubs have the most players?
3. Who are the highest-paid players?
4. What is the salary distribution across all players?
5. Which foot is most preferred among players?
6. Who is the tallest player in the dataset?


## Data Cleaning & Transformation

- Converted `Wage` column from string format (e.g., `€200K`) to numeric (e.g., `200000`) for analysis
- Parsed `Height` from feet/inches string format (e.g., `5'11"`) to total inches for accurate comparison
- Handled inconsistent data types before performing aggregations


## Key Insights

- **England leads in player count** with ~1,650 players, followed by Germany (~1,200), Spain (~1,075), Argentina (~940), and France (~910)
- **Wages are heavily right-skewed** — over 16,000 players earn below €25,000/week, while a tiny elite earn up to €565,000/week
- **~77% of players prefer their right foot** (~14,000 right-footed vs ~4,200 left-footed)
- **A few clubs dominate squad sizes**, suggesting concentrated recruitment in top-tier leagues
- **Height varies widely** across players, reflecting positional diversity in the sport


## Visualizations

### Top 5 Countries with Most Players
<img width="640" height="480" alt="Top_Countries" src="https://github.com/user-attachments/assets/8af6c71b-95ed-4410-91fa-032b735e018f" />


### Preferred Foot Distribution
<img width="800" height="500" alt="Preferred_Foot" src="https://github.com/user-attachments/assets/4d1e4ac4-361d-44fa-b90c-1b2800bca55d" />


### Salary Distribution
<img width="640" height="480" alt="Salary_distribution" src="https://github.com/user-attachments/assets/a924dc5c-7d9e-4bb3-9d78-a149514d53f0" />


## Project Structure

```
FIFA_Data_Analysis/
│
├── FIFA.py                        # Main analysis script
├── screenshots/
│   ├── top_countries.png          # Bar chart – top 5 countries
│   ├── preferred_foot.png         # Bar chart – preferred foot
│   └── salary_distribution.png   # Histogram – wage distribution
└── README.md


## ▶️ How to Run

1. **Clone the repository**

   ```bash
   git clone https://github.com/your-username/FIFA_Data_Analysis.git
   cd FIFA_Data_Analysis
   ```

2. **Install required libraries**

   ```bash
   pip install pandas numpy matplotlib
   ```

3. **Add your dataset**

   Place your FIFA CSV file in the project folder and rename it:

   ```
   fifa_data.csv
   ```

4. **Run the script**

   ```bash
   python FIFA.py
   ```


## Conclusion

This project demonstrates how Python can be used to clean messy real-world data, answer business questions through aggregation and filtering, and communicate findings through clear visualisations — core skills for any data analyst role.


## Future Improvements

- [ ] Correlation analysis between wage and overall player rating
- [ ] Age-based and position-wise performance breakdown
- [ ] Interactive dashboard using Power BI or Plotly Dash
- [ ] Predictive model to estimate player wages based on attributes


## Author

**Dhanya Vijayakumar**  
Aspiring Data Analyst  
www.linkedin.com/in/dhanya-v-a7114628b 
