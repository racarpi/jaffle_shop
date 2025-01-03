select
     trim(id)                               as id
    ,trim(customer)                         as customer_id
    ,cast(trim(ordered_at) as timestamp)    as ordered_at
    ,trim(store_id)                         as store_id
    ,cast(trim(subtotal) as integer)        as subtotal
    ,cast(trim(tax_paid) as integer)        as tax_paid
    ,cast(trim(order_total) as integer)     as order_total
from {{ source('jaffle_shop', 'orders') }}