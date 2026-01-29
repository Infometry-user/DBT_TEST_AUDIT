{{ config(
    materialized='incremental',
    unique_key='ORDER_ID'
) }}
SELECT
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    STATUS,
    TOTAL_AMOUNT,
    CREATED_DATE,
    MODIFIED_DATE
FROM
    {{ ref('STAGE_ORDERS') }} a