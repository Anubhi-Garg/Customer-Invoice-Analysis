# Customer-Invoice-Analysis

Purpose:
This SQL script contains a series of queries designed to extract and analyze data from the Customer and Invoice tables. The objective is to gain insights into customer purchase behavior, such as their total spending, invoices, and geographical details.

Queries Included:
Retrieve All Customers with Their Total Purchases:

Joins the Customer and Invoice tables.

Calculates the total amount spent by each customer and orders them by their total spending.

Customers from a Specific Country:

Filters customers based on their country (e.g., USA).

Retrieves the first name, last name, and email of customers from a specific country.

Find All Invoices Over a Specific Amount:

Selects invoices where the total amount is greater than a specified value (e.g., $1).

Displays invoice details like invoice_id, customer_id, and total.

Retrieve Latest Invoice for Each Customer:

Uses a subquery to fetch the most recent invoice for each customer.

Count of Invoices per Customer:

Uses the COUNT() function to determine how many invoices each customer has made.

Customers Who Made Purchases in Multiple Countries:

Identifies customers who have made purchases in more than one country.

Create a View for Total Spending by Customer:

Creates a view to simplify the process of querying the total amount spent by each customer.

Optimize Query Performance with Indexes:

Creates indexes on the customer_id and invoice_date columns to speed up queries.

Usage:
Run each query in a MySQL, PostgreSQL, or SQLite database environment where the Customer and Invoice tables are available.

Modify the queries as needed to fit your specific dataset and requirements.
