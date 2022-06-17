SELECT
    MAX(CASE WHEN Occupation = 'Doctor' THEN NAME END) AS 'Doctor',
    MAX(CASE WHEN Occupation = 'Professor' THEN NAME END) AS 'Professor',
    MAX(CASE WHEN Occupation = 'Singer' THEN NAME END) AS 'Singer',
    MAX(CASE WHEN Occupation = 'Actor' THEN NAME END) AS 'Actor'
FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY NAME) RN
      FROM Occupations) TEMP
GROUP BY RN;