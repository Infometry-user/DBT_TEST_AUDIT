{{ config (materialized = "table") }}
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
    {{ source('raw', 'RAW_PRODUCTS') }} a
WHERE CREATED_DATE >= CURRENT_DATE() OR MODIFIED_DATE >= CURRENT_DATE()


