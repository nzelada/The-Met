SELECT *
FROM met
LIMIT 10;

SELECT COUNT(department)
FROM met
WHERE department = 'American Decorative Arts';

SELECT COUNT(*)
FROM met
WHERE category LIKE '%celery%';

SELECT title, medium, date
FROM met
WHERE date LIKE '%1600%';

SELECT country, COUNT(country) AS 'Number'
FROM met
WHERE country IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

SELECT category, COUNT(category) AS 'Total'
FROM met
GROUP BY 1
HAVING Total > 100
ORDER BY 2 DESC;

SELECT medium, COUNT(medium) AS 'Total'
FROM met
WHERE medium LIKE '%gold%' OR medium = '%silver%'
GROUP BY 1
ORDER BY 2 DESC;
