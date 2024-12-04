
  create view "dbt"."test"."stg_jaffle_shop__customers__dbt_tmp"
    
    
  as (
    select
     trim(id)   as id
    ,trim(name) as name
from "dbt"."source"."customers"
  );