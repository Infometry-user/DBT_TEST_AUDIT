{{ config (materialized = "table") }}
SELECT
    WAREHOUSE_ID,
    WAREHOUSE_NAME,
    "location",
    '42202' CAPACITY,
    CREATED_DATE,
    MODIFIED_DATE
FROM
    {{ source('raw', 'RAW_WAREHOUSES') }} a
WHERE CREATED_DATE >= CURRENT_DATE() OR MODIFIED_DATE >= CURRENT_DATE()