{{ config(materialized = 'view') }}
    SELECT 
    CUSTOMER_CITY,
    CUSTOMER_ID,
    CUSTOMER_STATE,
    CUSTOMER_ZIP_CODE_PREFIX
    FROM DBT_SC.CUSTOMER_NEW