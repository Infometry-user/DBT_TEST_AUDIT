{{ config(
    materialized='incremental',
    unique_key='SHIPMENT_ID'
) }}
SELECT
    SHIPMENT_ID,
    ORDER_ID,
    WAREHOUSE_ID,
    SHIPPED_DATE,
    DELIVERY_DATE,
    CARRIER,
    STATUS,
    CREATED_DATE,
    MODIFIED_DATE
FROM
    {{ ref('STAGE_SHIPMENTS') }} a