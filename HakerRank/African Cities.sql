SELECT City.name
FROM City
INNER JOIN Country ON City.CountryCode = Country.code
WHERE Country.continent = 'Africa';