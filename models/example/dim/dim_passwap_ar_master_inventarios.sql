{{config(tags=["investment"])}}

select
    *
from 
    {{ref('stg_passwap_ar_master_inventarios')}}
where
    upper(country)='AR'