
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

file_path = r"C:\Users\ASUS\Downloads\fifa_data (2).csv"
fifa_data = pd.read_csv(file_path)

# 1. Which country has the most number of players?
country_counts = fifa_data['Nationality'].value_counts()
most_players_country = country_counts.idxmax()
print("Country with the most players:", most_players_country)

# 2. Plot a bar chart of the top 5 countries with the most number of players
top_5_countries = country_counts.head(5)
top_5_countries.plot(kind='bar', color='skyblue')
plt.title('Top 5 Countries with the Most Players')
plt.xlabel('Country')
plt.ylabel('Number of Players')
plt.show()
# 3. Which player has the highest salary?
highest_salary_player = fifa_data.loc[fifa_data['Wage'].idxmax()]
print("Player with the highest salary:", highest_salary_player['Name'], "with a salary of", highest_salary_player['Wage'])
# 4. Plot a histogram to get the salary range of the players
# Convert salary to numerical values by removing currency symbols and 'K' (indicating thousands)
fifa_data['Wage'] = fifa_data['Wage'].replace({'€': '', 'K': ''}, regex=True).astype(float) * 1000
fifa_data['Wage'].plot(kind='hist', bins=20, color='orange')
plt.title('Salary Distribution of Players')
plt.xlabel('Salary in Euros')
plt.ylabel('Frequency')
plt.show()

#5 Who is the tallest player in FIFA
def height_to_inches(height):
    if isinstance(height, str):
        feet, inches = height.split("'")
        return int(feet) * 12 + int(inches)
    return np.nan

fifa_data['Height_in_inches'] = fifa_data['Height'].apply(height_to_inches)

tallest_player = fifa_data.loc[fifa_data['Height_in_inches'].idxmax(), ['Name', 'Height', 'Club', 'Height_in_inches']]
print("Tallest Player:")
print(tallest_player)

# 6. Which club has the most number of players?
club_counts = fifa_data['Club'].value_counts()
most_players_club = club_counts.idxmax()
print("Club with the most players:", most_players_club)

# 7. Which foot is most preferred by players? Draw a bar chart for preferred foot
preferred_foot_counts = fifa_data['Preferred Foot'].value_counts()
preferred_foot_counts.plot(kind='bar', color='lightgreen')
plt.title('Preferred Foot of Players')
plt.xlabel('Preferred Foot')
plt.ylabel('Number of Players')
plt.show()

# Insights Data Story
print("\nData Story:")
print("1. The country with the most players is", most_players_country, "indicating strong representation from that nation.")
print("2. The top 5 countries with the highest number of players were plotted, showing a concentration in popular football nations.")
print("3. The player with the highest salary is", highest_salary_player['Name'], "reflecting the financial impact of top talents.")
print("4. A histogram shows the salary distribution among players, indicating the range and variation in wages.")
print("5. The tallest player is", tallest_player['Name'], "which may suggest an advantage in specific in-game scenarios.")
print("6. The club with the most players is", most_players_club, "showing the club's player acquisition volume.")
print("7. The preferred foot bar chart reveals the most common choice among players, with implications for gameplay dynamics.")