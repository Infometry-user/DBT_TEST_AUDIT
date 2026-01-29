-- This Model loads incremental data to DIM_ORDER_ITEMS 
{{ config(
    materialized='incremental',
    unique_key='ORDER_ITEM_ID'
) }}
SELECT
    ORDER_ITEM_ID,
    ORDER_ID,
    PRODUCT_ID,
    QUANTITY,
    PRICE_PER_UNIT,
    DISCOUNT,
    CREATED_DATE,
    MODIFIED_DATE
FROM
    {{ ref('STAGE_ORDER_ITEMS') }} a

