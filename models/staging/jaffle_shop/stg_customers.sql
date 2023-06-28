-- stg_customers.sql
-- Stage where we create a view with the customers from jaffle_shop
with source as (
    select * from {{ source('jaffle_shop','customers') }}
),
customers as (
    select 
        id as customer_id,
        first_name,
        last_name
    from source
)
select * from customers