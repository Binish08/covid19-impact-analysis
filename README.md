# 🌍 Global COVID-19 Impact Analysis

## 📖 Project Overview
This project analyzes the global impact of the COVID-19 pandemic on **unemployment, GDP, and total deaths** from 2019 to 2023.  
Using real-world data from **Our World in Data**, **World Bank**, and **ILO**, this analysis explores how the pandemic affected countries’ economies and employment levels.

The final visualization was created using **Tableau**, providing an interactive dashboard to highlight global trends and insights.

🔗 **View the Dashboard on Tableau Public:** [https://public.tableau.com/views/GlobalCOVID-19ImpactAnalysis/GlobalCOVID-19ImpactAnalysis?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link]

---

## 🧰 Tools and Technologies
| Tool | Purpose |
|------|----------|
| **Excel** | Data cleaning and preprocessing |
| **SQL (SQLite)** | Data merging and querying |
| **Tableau** | Visualization and dashboard creation |
| **GitHub** | Project sharing and documentation |

---

## 🗂️ Datasets Used
1. **COVID-19 Data** — from [Our World in Data](https://ourworldindata.org/covid-deaths)  
2. **GDP Data** — from [World Bank](https://data.worldbank.org/indicator/NY.GDP.MKTP.CD)  
3. **Unemployment Data** — from [ILO/World Bank](https://data.worldbank.org/indicator/SL.UEM.TOTL.ZS)

---

## ⚙️ Data Preparation Process
1. **Cleaned datasets** in Excel:
   - Removed blank rows and unwanted columns  
   - Standardized country names  
   - Formatted year and numeric columns  
2. **Used SQL (SQLite)** to:
   - Import all three datasets (`covid`, `gdp`, `unemployment`)  
   - Merge them into one table using `LEFT JOIN`  
   - Run analysis queries to explore relationships  
3. **Visualized in Tableau**:
   - Line chart: Unemployment trend over time  
   - Bar chart: Top 10 countries by COVID deaths  
   - Scatter plot: GDP vs Total Deaths  
   - Map: Global COVID impact (2021)

---

## 📊 Key Insights
- Unemployment spiked globally in **2020**, then gradually recovered by **2022–2023**.  
- **North America,USA, India, and Brazil** recorded the highest total COVID-19 deaths.  
- Higher GDP countries showed greater total deaths, suggesting large-scale exposure and better reporting.  
- Global GDP dipped during the pandemic and rebounded post-2021.  

---

## 🧩 Project Files
| File | Description |
|------|--------------|
| `covid_dataset_cleaned.csv` | Cleaned COVID dataset |
| `gdp_dataset_cleaned.csv` | Cleaned GDP dataset |
| `unemp_dataset_cleaned.csv` | Cleaned unemployment dataset |
| `merged_data.csv` | Final merged dataset used in Tableau |
| `queries.sql` | SQL queries used for merging and analysis |
| `screenshots/` | Folder containing Tableau dashboard screenshots |

---

## 🖼️ Dashboard Preview
[Dashboard Overview](screenshots of dashboard/Global COVID-19 Impact Analysis.png)

---

## 🧠 Learnings
- Strengthened data cleaning and transformation skills using Excel and SQL.  
- Learned to merge multi-source datasets effectively.  
- Created data-driven visual storytelling through Tableau dashboards.  
- Practiced end-to-end workflow: **Data → Analysis → Visualization → Insights**.

---

## 💬 Author
👩‍💻 **Binish Shamim**  
📧 [Binishshamim11@gmail.com]  
🔗 

---
