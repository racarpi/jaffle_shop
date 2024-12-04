select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select ordered_at
from "dbt"."test"."stg_jaffle_shop__orders"
where ordered_at is null



      
    ) dbt_internal_test