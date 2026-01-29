{{ config(
    materialized='incremental',
    unique_key='RETURN_ID'
) }}
SELECT
    RETURN_ID,
    ORDER_ID,
    PRODUCT_ID,
    RETURN_REASON,
    RETURN_DATE,
    REFUND_AMOUNT,
    CREATED_DATE,
    MODIFIED_DATE
FROM
    {{ ref('STAGE_RETURNS') }} a







