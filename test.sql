SELECT COUNT(DISTINCT contact_id) AS Requests_per_Month, DATE_TRUNC('month', created_at) AS Month_Created FROM fact_contacts GROUP BY DATE_TRUNC('month', created_at);

SELECT COUNT(DISTINCT quote_id) AS Quotes_per_Month, DATE_TRUNC('month', created_at) AS Month_Created FROM fact_quotes GROUP BY DATE_TRUNC('month', created_at);

SELECT customer_id AS customer, building_id AS building, COUNT(DISTINCT serial_number) AS amount_of_elevators FROM fact_elevators GROUP BY customer_id, building_id;