-- Total payment amount for each payment date (Top 5, descending order)
SELECT paymentDate, SUM(amount) AS totalAmount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Average credit limit of each customer
SELECT customerName, country, AVG(creditLimit) AS averageCreditLimit
FROM customers
GROUP BY customerName, country;

-- Total price of products ordered (productCode, quantityOrdered, totalPrice)
SELECT productCode, quantityOrdered, (quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered;

--  Highest payment amount for each check number
SELECT checkNumber, MAX(amount) AS highestAmount
FROM payments
GROUP BY checkNumber;
