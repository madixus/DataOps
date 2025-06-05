-- dbt/models/staging/stg_sales.sql

with raw_sales as (
    select
        InvoiceNo,
        StockCode,
        Description,
        Quantity,
        InvoiceDate,
        UnitPrice,
        CustomerID,
        Country
    from {{ source('sales', 'raw_sales') }}
)

select
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    cast(InvoiceDate as timestamp) as InvoiceDate,
    UnitPrice,
    CustomerID,
    Country
from raw_sales
where CustomerID is not null
  and UnitPrice is not null
