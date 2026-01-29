{{ config(
    materialized='incremental',
    unique_key='WAREHOUSE_ID'
) }}
SELECT
    WAREHOUSE_ID,
    WAREHOUSE_NAME,
    "location" as LOCATION,
    CAPACITY,
    CREATED_DATE,
    MODIFIED_DATE
FROM
    {{ ref('STAGE_WAREHOUSES') }} a