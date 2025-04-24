# Retrieve All Customers with Their Total Purchases
SELECT c.first_name, c.last_name, SUM(i.total) AS total_spent
FROM customer c
INNER JOIN invoice i ON c.customer_id = i.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC;

#  Customers from a Specific Country
SELECT first_name, last_name, email
FROM customer
WHERE country = 'USA';

# Find All Invoices Over a Specific Amount
SELECT invoice_id, customer_id, total
FROM invoice
WHERE total > 1;

# Retrieve Latest Invoice for Each Customer
SELECT customer_id, invoice_id, invoice_date, total
FROM invoice
WHERE invoice_date = (
    SELECT MAX(invoice_date)
    FROM invoice i2
    WHERE i2.customer_id = invoice.customer_id
);

#  Optimize Query Performance with Indexes
ALTER TABLE invoice
MODIFY invoice_date DATETIME;
CREATE INDEX idx_invoice_date ON invoice(invoice_date);