SELECT COUNT( [*], [DISTINCT], ContactID) FROM fact_contacts GROUP BY DATE_TRUNC('month', created_at);

SELECT COUNT( [*], [DISTINCT], QuoteId) FROM fact_quotes GROUP BY DATE_TRUNC('month', created_at);

SELECT COUNT( [*], [DISTINCT] SerialNumber) FROM fact_elevators GROUP BY CustomerId, BuildingId;