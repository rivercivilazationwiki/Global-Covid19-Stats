-- North america= us+ Canada(not latin america)
CREATE TABLE CoVid19_stats(
    id INTEGER PRIMARY KEY,
    region_continent TEXT,
    COUNTRY TEXT,
    cases INTEGER,
    deaths INTEGER);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("China","East Asia",80815,3177);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Japan","East Asia",701,19);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Italy","Southern Europe",17660,1266);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("France","Western Europe",3661,79);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Saudi Arabia","Middle East",62,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Iran","Middle East",11364,514);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("USA","North America",2068,41);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Canada","North America",158,1);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Australia","Australia/oceania",199,3);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("New Zeland","Australia/oceania",5,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Keney","Sub-Sahara Africa",1,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("South Africa","Sub-Sahara Africa",24,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Mexico","central America",12,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Honduras","central America",2,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Brazil","South America",151,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Peru","South America",28,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Dominican Republic","Carribian",8,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Jamacia","Carribian",5,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Norway","Scandinavia",996,1);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Denmark","Scandinavia",801,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Estonia","Baltic states",79,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Lithuania","Baltic states",6,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Spain","Iberian peninsula",5232,133);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Portugal","Iberian peninsula",112,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Afhiganastan","Central Asia",7,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Kazakhstan","Central Asia",4,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Ukraine","Eastern Europe",798,11);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Russia","Eastern Europe",45,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Germany","Central Europe",3675,8);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Poland","Central Europe",68,2);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("UK","British Isles",798,11);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Ireland","British Isles",90,1);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Morocco","North Africa",7,1);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Algeria","North Africa",26,2);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Finland","Northern Europe",155,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Iceland","Northern Europe",134,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Bulgaria","Balkand region",23,1);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Serbia","Balkand region",35,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("India","Indian subcontinent",35,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Pakistan","Indian subcontinent",28,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Malayasia","Southeast asia",197,0);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Indonesia","Southeast asia",69,4);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Greece","Soutern Europe",190,1);
INSERT INTO Covid19_stats (COUNTRY,region_continent,cases,deaths) VALUES ("Belgium","Western Europe",559,3);
SELECT region_continent, SUM(cases) AS total_cases FROM CoVid19_stats GROUP BY region_continent ORDER BY SUM(cases);
SELECT region_continent, AVG(cases) AS average_cases FROM CoVid19_stats GROUP BY region_continent ORDER BY AVG(cases);
SELECT region_continent, SUM(deaths) AS total_deaths FROM CoVid19_stats GROUP BY region_continent ORDER BY SUM(deaths);
SELECT  AVG(cases) AS average_cases FROM CoVid19_stats;
SELECT region_continent, CASE
WHEN AVG(cases)<2979.3863636363635 THEN "Below Average"
WHEN AVG(cases)>2979.3863636363635 THEN "Above Average"
END "cases_zone"
FROM CoVid19_stats
GROUP BY region_continent
ORDER BY cases_zone;
SELECT AVG(deaths) AS average_deaths FROM CoVid19_stats;
SELECT region_continent, CASE
WHEN AVG(deaths)<119.97727272727273 THEN "Below Average"
WHEN AVG(deaths)>119.97727272727273 THEN "Above Average"
END "deaths_zone"
FROM CoVid19_stats
GROUP BY region_continent
ORDER BY deaths_zone;
SELECT * FROM CoVid19_stats;
