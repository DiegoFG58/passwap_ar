{{config(tags=["navigation"])}}


with ref_ad_all as (
  
  select
        *
    from {{ source('RAW_PASSWAP','G_DATA_INVENTORIES')}}

)
select * from ref_ad_all