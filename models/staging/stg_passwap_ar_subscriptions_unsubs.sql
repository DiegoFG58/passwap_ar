{{config(tags=["subs"])}}



with mx_subscriptions_unsubs as (
  
  select
        *
    from {{ source('RAW_PASSWAP','AR_SUBSCRIPTIONS_UNSUBS')}}

)
select * from mx_subscriptions_unsubs