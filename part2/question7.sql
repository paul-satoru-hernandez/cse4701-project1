SELECT Pname, SUM(Hours) AS Total_hours
FROM PROJECT, WORKS_ON
WHERE Pnumber=Pno
GROUP BY Pname
ORDER BY Total_hours DESC;