{{config(tags=["investment"])}}


select
    *
from 
    {{ref('stg_passwap_ar_x_master_operadores')}}
where
    upper(country)='AR'