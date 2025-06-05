-- dbt/models/marts/fct_daily_revenue.sql

select
    cast(InvoiceDate as date) as sale_date,
    sum(Quantity * UnitPrice) as daily_revenue
from {{ ref('stg_sales') }}
group by 1
order by 1
