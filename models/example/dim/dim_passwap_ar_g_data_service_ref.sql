{{config(tags=["subs"])}}

select 
    *
from {{ref('stg_passwap_ar_g_data_service_ref')}}
where
    upper(country) = 'AR'and
    platform = 'PASSWAP' and
    validity_start <= dateadd({{ var('var_passwap_delta_type') }} ,{{ var('var_passwap_delta_value_init') }} ,current_date) and
    validity_end >= dateadd({{ var('var_passwap_delta_type') }} ,{{ var('var_passwap_delta_value_end') }} ,current_date)