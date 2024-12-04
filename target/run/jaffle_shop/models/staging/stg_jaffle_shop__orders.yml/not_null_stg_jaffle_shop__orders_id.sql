select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "dbt"."test"."stg_jaffle_shop__orders"
where id is null



      
    ) dbt_internal_test