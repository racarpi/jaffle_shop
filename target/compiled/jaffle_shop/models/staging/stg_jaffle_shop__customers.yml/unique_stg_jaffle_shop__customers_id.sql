
    
    

select
    id as unique_field,
    count(*) as n_records

from "dbt"."test"."stg_jaffle_shop__customers"
where id is not null
group by id
having count(*) > 1


