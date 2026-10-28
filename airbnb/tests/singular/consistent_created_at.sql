with fct_reviews as 
(
    select *
    from {{ ref('fct_reviews') }}
),
dim_listings as 
(
    select *
    from {{ ref('dim_listings_cleansed') }}
)
select
    r.listing_id,
    r.review_date,
    l.created_at
from fct_reviews r
join dim_listings l 
on r.listing_id = l.listing_id
where r.review_date < l.created_at