select
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    STATUS,
    ETL_LOADED_AT
from {{ source('External_table_source', 'orders') }}
where order_id is not NULL
or CUSTOMER_ID is not NULL