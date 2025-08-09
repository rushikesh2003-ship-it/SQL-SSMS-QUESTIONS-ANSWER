SELECT * FROM DBO.Employee$
-------SOLUTION OF Q2)
SELECT Employee$.Emp_name,Employee$.Salary FROM DBO.Employee$
ORDER BY Salary DESC ;
-------SOLUTION OF Q1)
SELECT Books$.Book_title,Books$.Category,Books$.Rental_Price FROM DBO.Books$
-------SOLUTION OF Q4)
SELECT Books$.Category, COUNT(*) AS TotalBooks
FROM DBO.Books$
GROUP BY Category;
-------SOLUTION OF Q3)
SELECT A.Customer_name,B.Issued_book_name
FROM librarydatabase.dbo.Customer$ A
JOIN librarydatabase.dbo.Issue_Status$ B
ON A.Customer_Id= B.Issued_cust
-------- solution of Q5)
select librarydatabase.dbo.Employee$.Emp_name,librarydatabase.dbo.Employee$.Position
from librarydatabase.dbo.Employee$
where Salary > 50000
--------solution of Q7)
SELECT librarydatabase.dbo.Employee$.branch_no, COUNT(*) AS Totalemployee
FROM librarydatabase.dbo.Employee$
GROUP BY branch_no;
--------SOLUTION OF Q8)
SELECT A.Customer_name,B.Issued_book_name
FROM librarydatabase.dbo.Customer$ A
JOIN librarydatabase.dbo.Issue_Status$ B
ON A.Customer_Id= B.Issued_cust
WHERE B.Issue_date between '2023-05-01' and '2023-05-31'
--------SOLUTION OF Q9)
SELECT Books$.Book_title
FROM Books$
WHERE Category LIKE 'HISTORY'
--------solution of Q10)
SELECT Employee$.branch_no, COUNT(*) AS TotalEmployees
FROM Employee$
GROUP BY branch_no
HAVING COUNT(*) > 5;

--------solution Q11)
SELECT A.Customer_name
FROM dbo.Customer$ A
JOIN DBO.Return_Status$ C
ON A.Customer_Id= C.Return_cust


--------- SOLUTION Q14)
SELECT Employee$.Emp_name
FROM Employee$
WHERE Emp_name LIKE '%SON'

--------SOLUTION Q13)
SELECT DATEPART(YEAR,Customer$.Reg_date) AS RegistrationYear, Customer_name
FROM Customer$
ORDER BY RegistrationYear;

------SOLUTION Q15)
-- Count of books in Return_Status sheet
SELECT Return_Status$.Return_book_name, COUNT(*) AS ReturnCount
FROM Return_Status$
GROUP BY Return_Status$.Return_book_name;

-- Count of books in Issue_Status sheet
SELECT Issued_book_name, COUNT(*) AS IssueCount
FROM Issue_Status$
GROUP BY Issued_book_name;

--------SOLUTION OF Q6)
SELECT A.Customer_name
FROM Customer$ A
LEFT JOIN Issue_Status$ B ON A.Customer_Id = B.Issued_cust
WHERE A.Reg_date < '2022-01-01'
AND B.Issued_cust IS NULL;

--------SOLUTION OF Q12)
SELECT A.Customer_name
FROM Customer$ A
LEFT JOIN Return_Status$ B ON A.Customer_Id = B.Return_cust
WHERE B.Return_cust IS NULL;


