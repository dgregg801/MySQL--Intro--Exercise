/* joins: select all the computers from the products table:

using the products table and the categories table, return the product name and the category name */
SELECT  products.Name as 'Product Name',  categories.Name as 'Category Name'
FROM products
INNER JOIN categories
ON products.CategoryId = categories.categoryID
Where categories.name like 'Computers';


/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT Name, Price, Rating FROM products
INNER JOIN reviews
ON products.ProductID = reviews.ProductID
WHERE reviews.Rating = 5;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT sales.EmployeeID, FirstName, LastName, Title, SUM(sales.Quantity) FROM employees
INNER JOIN sales
ON employees.EmployeeID = sales.EmployeeID
GROUP BY employees.EmployeeID;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT * FROM departments;
SELECT  Categories.Name AS 'Category Name', departments.Name AS 'Department Name', categories.DepartmentID From  categories
INNER JOIN departments
ON categories.DepartmentID = departments.DepartmentID
WHERE categories.Name = 'Appliances' or  categories.Name = 'Games';

/* joins: find the product name, total # sold, and total price sold,

 for Eagles: Hotel California --You may need to use SUM() */
SELECT products.ProductID, Name PricePerUnit From products
INNER JOIN sales
ON products.ProductID = sales.ProductID
WHERE Name LIKE '%HOTEL%California%'
GROUP BY sales.ProductID;
 
 SELECT * FROM sales
 WHERE ProductID = 97;
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT Name AS 'Product Name', Reviewer, Rating, Comment FROM reviews
INNER JOIN products
ON reviews.ProductID = products.ProductID
WHERE Name LIKE '%Visio%TV%' AND Rating = 1;
-- ------------------------------------------ Extra - May be difficult

/* Your goal is to write a query that serves as an employee sales report.



This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
SELECT EmployeeID, FirstName, LastName, Name, Quantity FROM employees
INNER JOIN sales
