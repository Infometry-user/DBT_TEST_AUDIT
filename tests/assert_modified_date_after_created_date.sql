

select
    CUSTOMER_ID,
    CREATED_DATE,
    MODIFIED_DATE
from {{ ref('DIM_CUSTOMERS') }}
where MODIFIED_DATE is not null 
  and MODIFIED_DATE < CREATED_DATE