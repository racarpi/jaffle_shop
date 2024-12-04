select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select name
from "dbt"."test"."stg_jaffle_shop__customers"
where name is null



      
    ) dbt_internal_test