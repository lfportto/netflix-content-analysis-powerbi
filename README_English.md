# Netflix Content Catalog Dashboard (2008-2021)

📄 [Versão em português](README.md)

## Description
This project consists of the development of an interactive Power BI dashboard for analyzing the content catalog of Netflix.
The solution was built based on a historical dataset containing information about movies and TV shows available on the platform between 2008 and 2021, with the goal of transforming raw data into relevant insights through a complete data analysis workflow. An ETL (Extract, Transform, Load) approach was used.

## 🎯 Project Objective
This is a personal project developed with a focus on improving data analysis skills, including:
- Data manipulation and processing using SQL;
- Data modeling;
- Creation of metrics and calculations using DAX;
- Development of interactive dashboards.

Additionally, the dashboard was designed to answer the following analytical questions:
- Has Netflix’s catalog grown over time?
- During which periods did the greatest expansion occur?
- Has the target audience changed over the years?
- What types of content dominate the catalog?
- Which genres are the most frequent?
- Which countries produce the most content?
- Is the catalog globally distributed or concentrated?
- Who are the most recurring directors and actors?
- What is the typical duration pattern of movies?

## Technologies Used
- **MySQL**
  - Data storage;
  - Data cleaning, processing, and encoding standardization (UTF-8);
  - Creation of columns for unit conversion;
  - Creation of support columns for sorting.  
  📁 [View the final processed script here](netflix_titles_final.sql)

- **Power BI**
  - Connection to the MySQL database;
  - Additional transformations in Power Query;
  - Data modeling (relationships and structure);
  - Creation of multiple measures using DAX;
  - Development of interactive visualizations;
  - Construction of the final dashboard.

## Techniques and Features Used
- **Interactivity and Dynamism**
  - `Field Parameter (Dynamic Column Switching):` Allows users to switch between dimensions within the same visual (e.g., BR vs US rating standards).
  - `Numeric Parameter (Top N Selection):` Allows users to define how many elements are displayed in rankings.
  - `Dynamic Titles (SELECTEDVALUE):` Titles that automatically update based on applied filters.

- **Analytical Logic with DAX**
  - `Dynamic Ranking with RANKX:` Creation of dynamic rankings based on measures.
  - `Top N via Measure:` Controls Top N using measures, ensuring consistency even with dynamic filters.
  - `Context-aware Measures:` Measures that adapt to the user’s filter context.

- **Visual and User Experience (UX)**
  - `Conditional Formatting via Measure:` Dynamic color application in charts based on rules.
  - `Automatic Highlighting:` Visual emphasis on the most relevant element in charts.
  - `Custom Power BI Theme:` Creation of a dashboard theme, including the color palette and embedded custom icons used in conditional formatting (📁 [View the theme script here](netflix_dashboard_pbi_theme.json)).
  - `Image Rendering via URL:` Dynamic display of country flags, making tables more visually intuitive.

- **Data Modeling**
  - Splitting multi-value columns (genres, cast, directors, countries).
  - Star schema structure.
  - Use of support columns to correctly sort categories.

## Access the Dashboard
[Click here to access the dashboard on Power BI](https://app.powerbi.com/view?r=eyJrIjoiYjc5OWVlMzUtMmZlNS00NWVhLWI3OTQtYzJiODkyNjcyMTkxIiwidCI6ImNmNzJlMmJkLTdhMmItNDc4My1iZGViLTM5ZDU3YjA3Zjc2ZiIsImMiOjR9&pageName=36e59d76a072732c0365)

## Dashboard Structure
**Executive Overview:** Overview with key indicators and catalog distribution.  
🎯 **Objective:** provide an executive summary for quick understanding of the overall scenario.

![Aba1](https://github.com/user-attachments/assets/2aec2ef2-ded4-4724-9a4a-d4959c53b070)

**Temporal Evolution:** Analysis of catalog evolution over time.  
🎯 **Objective:** identify growth, patterns, and changes over the years.

![Aba2](https://github.com/user-attachments/assets/b97390af-396a-48c7-b88b-67c7a8016336)

**Geographic Distribution:** Geographic distribution of content.  
🎯 **Objective:** analyze the origin of titles and global concentration.

![Aba3](https://github.com/user-attachments/assets/7a033cd8-e56f-4684-a4fe-0a2395e0fe53)

**Profile Analysis:** Analysis of the catalog’s editorial profile.  
🎯 **Objective:** understand genres, professionals, and content characteristics.

![Aba4](https://github.com/user-attachments/assets/3e11c867-4caf-44eb-9a54-6f14fe91a665)

**Database:** Interactive table with all data.  
🎯 **Objective:** allow detailed exploration by the user.

![Aba5](https://github.com/user-attachments/assets/49a32c85-6912-42e1-b71d-8a7cb7a8102a)

**Tooltip:** On all pages, in the top-right corner, there is an information icon that, when hovered over, reveals a tooltip with details about the dashboard, the data source, and the purpose of this project. The image below shows the first page with the informational tooltip open.

![Tooltip](https://github.com/user-attachments/assets/522295c0-cb4f-48da-95a7-a6f0d856d968)

## Color Palette
![Paleta](https://github.com/user-attachments/assets/bfe3dc6a-2f32-4e4a-9617-9bf392546e58)

## Key Insights
&nbsp;&nbsp;&nbsp;&nbsp;The analysis of Netflix’s catalog from 2008 to 2021 reveals clear patterns in growth, strategic positioning, and content distribution.

&nbsp;&nbsp;&nbsp;&nbsp;First, it is evident that the expansion of the catalog did not occur linearly. Until approximately 2013, the number of titles added remained relatively low, reflecting an early stage of the streaming operation. Starting in 2016, however, there is a significant acceleration in growth, culminating in a peak in 2019, the year with `the highest number of additions to the catalog`. This behavior suggests a strong global expansion strategy, with a substantial increase in both content acquisition and production.

&nbsp;&nbsp;&nbsp;&nbsp;Regarding audience profile, the data indicates a `consistent predominance of content targeted at adult audiences`. Ratings such as TV-MA and R lead by a wide margin across all analyzed periods, followed by intermediate ratings such as TV-14 and PG-13. This distribution remains relatively stable over time, suggesting that despite the growth of the catalog, `there has been no significant shift in the platform’s target audience`, which continues to focus primarily on more mature viewers.

&nbsp;&nbsp;&nbsp;&nbsp;From an editorial perspective, the catalog shows a strong concentration in specific genres. Titles categorized as `International Movies, Dramas, and Comedies dominate the dataset`, indicating a clear strategy of cultural diversification combined with broad-appeal content. When segmented by type, movies tend to exhibit greater genre diversity, while TV shows show a more pronounced concentration in categories such as drama, crime, and TV-oriented productions, highlighting structural differences between formats.

&nbsp;&nbsp;&nbsp;&nbsp;The geographic analysis reveals that, although the catalog is global — with content from 122 countries — it still presents a high level of concentration. `The United States accounts for approximately 46% of all titles`, establishing itself as the main production hub. India stands out as the second-largest contributor, reinforcing the importance of international markets in the platform’s strategy. Nevertheless, the gap between the leading country and the others highlights an uneven distribution of production.

&nbsp;&nbsp;&nbsp;&nbsp;Regarding release periods, the vast majority of available titles were produced after the 2000s, with a strong concentration in the 2010s. Content from the 20th century represents only a small fraction of the catalog, indicating a `clear focus on more recent productions`, aligned with the expected behavior of streaming platforms.

&nbsp;&nbsp;&nbsp;&nbsp;Finally, the analysis of professionals involved in productions reveals interesting patterns of recurrence. Certain directors and actors appear frequently, especially in specific contexts such as `Indian productions`. Additionally, there are notable differences between movies and TV shows in terms of recurring professionals and production structure, reinforcing the importance of segmenting analyses by content type.

&nbsp;&nbsp;&nbsp;&nbsp;Overall, the data shows that Netflix’s catalog combines an accelerated expansion strategy, strong international presence, and a concentration on adult-oriented content, with a predominance of recent productions and controlled diversification by genre and origin.

## Data Source
The data used is public and was obtained from `Kaggle`. You can access the dataset at:  
🔗 [Netflix Movies and TV Shows](https://www.kaggle.com/datasets/shivamb/netflix-shows)

## License
This project is licensed under the [MIT License](LICENSE).

## Tags
`#PowerBI` `#Dashboard` `#DataAnalysis` `#DataEngineering` `#ETL` `#BusinessIntelligence` `#BI` `#DataVisualization` `#PublicData` `#MySQL` `#SQL` `#OpenData` `#Netflix` `#PortfolioProject`
