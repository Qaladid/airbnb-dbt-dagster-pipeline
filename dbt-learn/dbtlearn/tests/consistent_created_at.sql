-- tests/consistent_created_at.sql

SELECT 
    r.review_date,
    l.created_at
FROM 
    {{ ref('fct_reviews') }} r
JOIN 
    {{ ref('dim_listings_cleansed') }} l
ON 
    r.listing_id = l.listing_id
WHERE 
    r.review_date < l.created_at

