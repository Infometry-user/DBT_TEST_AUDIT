{{ config (materialized = "table") }}
SELECT
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    STATUS,
    TOTAL_AMOUNT,
    CREATED_DATE,
    MODIFIED_DATE
FROM
    {{ source('raw', 'RAW_ORDERS') }} a
WHERE CREATED_DATE >= CURRENT_DATE() OR MODIFIED_DATE >= CURRENT_DATE()


