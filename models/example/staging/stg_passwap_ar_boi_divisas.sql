{{config(tags=["investment"])}}


with boi_divisas as (
  
  select
        *

    from {{ source('RAW_PASSWAP','BOI_DIVISAS')}}

)
select * from boi_divisas