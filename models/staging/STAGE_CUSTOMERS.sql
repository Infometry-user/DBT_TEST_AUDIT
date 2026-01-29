DBT_DEMO.LANDING.RAW_CUSTOMERS-- This Model loads daily data to STAGE_CUSTOMERS 

-- Model to CREATE STAGE_CUSTOMER which loads current day data
{{ config (materialized = "table") }}
SELECT
    CUSTOMER_ID,
    "name" as CUSTOMER_NAME,
    EMAIL,
    CITY,
    STATE,
    COUNTRY,
    REGISTRATION_DATE,
    CREATED_DATE,
    MODIFIED_DATE
FROM
    {{ source('raw', 'RAW_CUSTOMERS') }} a
WHERE CREATED_DATE >= CURRENT_DATE() OR MODIFIED_DATE >= CURRENT_DATE()