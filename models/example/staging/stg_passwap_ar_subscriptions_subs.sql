{{config(tags=["subs"])}}



with es_subscriptions_subs as (
  
  select
        *
    from {{ source('RAW_PASSWAP','AR_SUBSCRIPTIONS_SUBS')}}

)
select * from es_subscriptions_subs