select
     trim(id)   as id
    ,trim(name) as name
from {{ source('jaffle_shop', 'customers') }}