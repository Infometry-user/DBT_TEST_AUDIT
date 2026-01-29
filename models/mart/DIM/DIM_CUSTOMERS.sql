
-- This Model loads incremental data to DIM_CUSTOMERS 
{{ config(
    materialized='incremental',
    unique_key='CUSTOMER_ID'
) }}


SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME as "name",
    EMAIL,
    CITY,
    STATE,
    COUNTRY,
    REGISTRATION_DATE,
    CREATED_DATE,
    MODIFIED_DATE
FROM
    {{ ref('STAGE_CUSTOMERS') }} a

   
