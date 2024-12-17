--average air quality by region:
SELECT "Geo Place Name", AVG("Data Value") AS avg_air_quality
FROM [df_NYC Air Quality]
GROUP BY "Geo Place Name"
ORDER BY avg_air_quality DESC;

--Maximum and minimum air quality for each indicator:
SELECT "Name", MAX("Data Value") AS max_value, MIN("Data Value") AS min_value
FROM [df_NYC Air Quality]
GROUP BY "Name";

--Total data points collected per year:
SELECT "Time Period", COUNT(*) AS total_records
FROM [df_NYC Air Quality]
GROUP BY "Time Period"
ORDER BY "Time Period" DESC;

--Find records where air quality exceeds a specific threshold:
SELECT *
FROM [df_NYC Air Quality]
WHERE "Data Value" > 50
ORDER BY "Data Value" DESC;

--Filter data for a specific region and indicator:
SELECT *
FROM [df_NYC Air Quality]
WHERE "Geo Place Name" = 'southeast queens'
  AND "Name" = 'Fine particles (PM 2.5)';

--Compare air quality averages across multiple indicators:
SELECT "Name", AVG("Data Value") AS avg_value
FROM [df_NYC Air Quality]
GROUP BY "Name"
ORDER BY avg_value DESC;

--Top 5 regions with the worst air quality:
SELECT TOP 5 "Geo Place Name", AVG("Data Value") AS avg_air_quality
FROM [df_NYC Air Quality]
GROUP BY "Geo Place Name"
ORDER BY avg_air_quality DESC;
