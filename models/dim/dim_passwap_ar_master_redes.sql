{{config(tags=["investment"])}}

select
    *
from 
    {{ref('stg_passwap_ar_master_redes')}}
where
    upper(country)='AR'