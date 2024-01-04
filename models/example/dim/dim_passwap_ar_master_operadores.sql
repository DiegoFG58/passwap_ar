{{config(tags=["investment"])}}

select
    *
from 
    {{ref('stg_passwap_ar_master_operadores')}}
where
    upper(country)='AR'