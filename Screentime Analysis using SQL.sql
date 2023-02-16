
SELECT * FROM project1.dbo.Screentime;

/* to check most used app*/

SELECT Date, MAX(App) AS maximum_usage
FROM project1.dbo.Screentime
GROUP BY Date
ORDER BY maximum_usage;

/* to  check least used app*/
SELECT Date, MIN(App) AS minimum_usage
FROM project1.dbo.Screentime
GROUP BY Date;

/* to display apps used between two dates*/
SELECT * from project1.dbo.Screentime where
(Date BETWEEN '2022-08-03'AND '2022-08-30') AND (Usage> 100);

/*to check maximum times the apps were opened each day*/
SELECT App,Date, MAX(Times_opened) AS Frequently_opened
FROM project1.dbo.Screentime 
GROUP BY Date, App;

