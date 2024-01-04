{{config(tags=["investment"])}}

with cpc as (
  
  select* from {{ source('RAW_PASSWAP','XBI_CPC_FILES_AGRUPADA_WIFI')}}

)
select * from cpc