with orders as (
    select
         customer_id
        ,min(ordered_at)    as first_order_date
        ,max(ordered_at)    as last_order_date
        ,count(distinct id) as number_of_orders
        ,sum(subtotal)      as lifetime_spend_pretax
        ,sum(tax_paid)      as lifetime_tax_paid
        ,sum(order_total)   as lifetime_spend
    from "dbt"."test"."stg_jaffle_shop__orders"
    group by 1
)
select
     cst.id
    ,cst.name
    ,ord.first_order_date
    ,ord.last_order_date
    ,coalesce(ord.number_of_orders      , 0) as number_of_orders
    ,coalesce(ord.lifetime_spend_pretax , 0) as lifetime_spend_pretax
    ,coalesce(ord.lifetime_tax_paid     , 0) as lifetime_tax_paid
    ,coalesce(ord.lifetime_spend        , 0) as lifetime_spend
from "dbt"."test"."stg_jaffle_shop__customers" as cst
left join orders as ord
    on cst.id = ord.customer_id