SELECT *
  FROM df_Healthcare
  

  --Demographics Analysis: Top 5 community areas with the highest unemployment rates
  SELECT TOP 5 "Community Area Name", "Unemployment"
FROM df_Healthcare
ORDER BY "Unemployment" DESC;




--Health Statistics: Community areas with the highest birth rate:
SELECT "Community Area Name", "Birth Rate"
FROM df_Healthcare
ORDER BY "Birth Rate" DESC;

--Average infant mortality rate across all community areas:
SELECT AVG("Infant Mortality Rate") AS "Average Infant Mortality Rate"
FROM df_Healthcare;



--Socioeconomic Factors: Correlation between per capita income and unemployment:
SELECT TOP 5 "Per Capita Income", "Unemployment"
FROM df_Healthcare
ORDER BY "Unemployment" DESC;



--Comparative Analysis: Top 10 community areas with the highest dependency ratio:
SELECT TOP 10 "Community Area Name", "Dependency"
FROM df_Healthcare
ORDER BY "Dependency" DESC;


--Disease Analysis: Areas with the highest rates of gonorrhea in females:
SELECT TOP 5 "Community Area Name", "Cancer (All Sites)"
FROM df_Healthcare
ORDER BY "Cancer (All Sites)" DESC;

SELECT TOP 5 "Community Area Name", "Tuberculosis"
FROM df_Healthcare
ORDER BY "Tuberculosis" DESC;

SELECT TOP 5 "Community Area Name", "Diabetes-related"
FROM df_Healthcare
ORDER BY "Diabetes-related" DESC;

