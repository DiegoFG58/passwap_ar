-- We cover 8 days in the past to assess 'week'-KPIs


with es_unsubscriptions as (
  
  select
        *,
        'PASSWAP' as platform_data
    from {{ ref('stg_passwap_ar_subscriptions_unsubs')}}
    where 
        ((subs_date >= dateadd(day, -8,dateadd({{ var('var_passwap_delta_type') }} ,{{ var('var_passwap_delta_value_init') }} ,current_date)) and subs_date < dateadd({{ var('var_passwap_delta_type') }} ,{{ var('var_passwap_delta_value_end') }} ,current_date))
        or (unsubs_date >= dateadd({{ var('var_passwap_delta_type') }} ,{{ var('var_passwap_delta_value_init') }} ,current_date) and unsubs_date < dateadd({{ var('var_passwap_delta_type') }} ,{{ var('var_passwap_delta_value_end') }} ,current_date))
        or (deferred_unsubs_date >= dateadd({{ var('var_passwap_delta_type') }} ,{{ var('var_passwap_delta_value_init') }} ,current_date) and deferred_unsubs_date < dateadd({{ var('var_passwap_delta_type') }} ,{{ var('var_passwap_delta_value_end') }} ,current_date)))
        and msisdn is not null    
)
select * from es_unsubscriptions