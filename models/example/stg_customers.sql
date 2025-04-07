with stg_customers as (
    SELECT 
    c_custkey,
    c_name,
    c_address,
    c_phone
    FROM DBT_SC.CUSTOMER
)

select * from stg_customers