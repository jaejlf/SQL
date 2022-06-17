SELECT Country.continent, TRUNCATE(AVG(City.population),0)
FROM Country JOIN City
ON Country.code = City.CountryCode
GROUP BY Country.continent;