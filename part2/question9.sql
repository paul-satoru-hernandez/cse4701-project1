SELECT Fname, Minit, Lname, Ssn
FROM EMPLOYEE, DEPARTMENT, DEPT_LOCATIONS
WHERE EMPLOYEE.Dno=DEPARTMENT.Dnumber AND DEPT_LOCATIONS.Dnumber=DEPARTMENT.Dnumber AND Dlocation="Houston" AND EMPLOYEE.Ssn IN (SELECT Ssn FROM EMPLOYEE, DEPARTMENT, DEPT_LOCATIONS WHERE EMPLOYEE.Dno=DEPARTMENT.Dnumber AND DEPT_LOCATIONS.Dnumber=DEPARTMENT.Dnumber AND Dlocation="Houston");