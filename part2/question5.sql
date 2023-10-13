SELECT Fname, Minit, Lname, Salary
FROM EMPLOYEE, (SELECT Ssn AS James_ssn FROM EMPLOYEE WHERE Fname="James" AND Minit="E" AND Lname="Borg") AS JAMES_SSN
WHERE Super_ssn=James_ssn
ORDER BY Salary DESC;