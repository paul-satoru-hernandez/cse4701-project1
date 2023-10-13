SELECT Pname, Total_hours FROM
(SELECT Pname, SUM(Hours) AS Total_hours
FROM PROJECT, WORKS_ON
WHERE Pnumber=Pno
GROUP BY Pname) AS TOTAL_HOURS
WHERE Total_hours<40;