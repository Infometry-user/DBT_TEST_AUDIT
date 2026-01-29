-- This Model loads daily data to STAGE_ORDER_ITEMS

{{ config (materialized = "table") }}
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
    {{ source('raw', 'RAW_ORDER_ITEMS') }} a
WHERE CREATED_DATE >= CURRENT_DATE() OR MODIFIED_DATE >= CURRENT_DATE()



