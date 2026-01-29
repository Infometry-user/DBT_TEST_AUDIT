-- This test fails if any customer has a registration date 
-- later than the current date in Snowflake.

select
    CUSTOMER_ID,
    REGISTRATION_DATE
from {{ ref('DIM_CUSTOMERS') }}
where REGISTRATION_DATE > CURRENT_DATE()