


with subs_unsubs as
(
    select * from {{ref('dim_passwap_ar_subscriptions_subs')}}
    union all
    select * from {{ref('dim_passwap_ar_subscriptions_unsubs')}}
)
select * from subs_unsubs