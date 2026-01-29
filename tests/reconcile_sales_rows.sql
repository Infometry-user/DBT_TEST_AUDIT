/* RECONCILIATION: FACTS_SALES vs STAGE_ORDERS
  SEVERITY: Warn (Job will finish even if counts differ)
*/

{{ config(
    severity = 'error'
) }}

with staging_count as (
    select count(*) as stg_rows from {{ ref('STAGE_ORDERS') }}
),

mart_count as (
    select count(*) as mart_rows from {{ ref('FACTS_SALES') }}
)

select
    stg_rows,
    mart_rows
from staging_count
join mart_count on 1=1
where stg_rows != mart_rows