{{ config(
    materialized='incremental',
    unique_key='PAYMENT_ID'
) }}
SELECT
    PAYMENT_ID,
    ORDER_ID,
    PAYMENT_METHOD,
    PAYMENT_DATE,
    PAYMENT_STATUS,
    AMOUNT,
    CREATED_DATE,
    MODIFIED_DATE
FROM
    {{ ref('STAGE_PAYMENTS') }} a