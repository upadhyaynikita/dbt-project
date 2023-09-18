select
    CUSTOMER_ID,
    first_name,
    last_name
from {{ source('External_table_source', 'customers') }}
where CUSTOMER_ID is not NULL