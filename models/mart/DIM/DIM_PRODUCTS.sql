{{ config(
    materialized='incremental',
    unique_key='PRODUCT_ID'
) }}
SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    CATEGORY,
    PRICE,
    SUPPLIER_ID,
    --AMOUNT,
    CREATED_AT,
    CREATED_DATE,
    MODIFIED_DATE
FROM
    {{ ref('STAGE_PRODUCTS') }} a



