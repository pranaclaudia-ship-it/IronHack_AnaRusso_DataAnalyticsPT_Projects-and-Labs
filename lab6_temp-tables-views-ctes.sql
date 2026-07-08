USE sakila;
SHOW tables;

-- Step 1: Create a View
CREATE VIEW customer_rental_summary AS
SELECT 
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    customer.email,
    COUNT(rental.rental_id) AS rental_count
FROM customer
LEFT JOIN rental
    ON customer.customer_id = rental.customer_id
GROUP BY 
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    customer.email;

-- Step 2: Create a Temporary Table
CREATE TEMPORARY TABLE customer_payment_summary AS
SELECT
    customer.customer_id,
    SUM(payment.amount) AS total_paid
FROM customer
LEFT JOIN payment
    ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id;

-- Step 3: Create a CTE and the Customer Summary Report
WITH customer_summary AS (
    SELECT
        customer.customer_id,
        customer.first_name,
        customer.last_name,
        customer.email,
        customer_rental_summary.rental_count,
        customer_payment_summary.total_paid
    FROM customer
    LEFT JOIN customer_rental_summary
        ON customer.customer_id = customer_rental_summary.customer_id
    LEFT JOIN customer_payment_summary
        ON customer.customer_id = customer_payment_summary.customer_id
)
SELECT
    first_name,
    last_name,
    email,
    rental_count,
    total_paid,
    (total_paid / rental_count) AS average_payment_per_rental
FROM customer_summary;
