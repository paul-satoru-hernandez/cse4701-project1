SELECT Dname, Fname, Minit, Lname, Avg_salary
FROM DEPARTMENT, EMPLOYEE, (SELECT Dno, AVG(Salary) AS Avg_salary FROM EMPLOYEE GROUP BY Dno) AS AVG_SALARY
WHERE Ssn=Mgr_ssn AND Dnumber=AVG_SALARY.Dno;