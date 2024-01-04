{{config(tags=["investment"])}}

select
    *
from 
    {{ref('stg_passwap_ar_master_keywords')}}
where
    upper(country)='AR'