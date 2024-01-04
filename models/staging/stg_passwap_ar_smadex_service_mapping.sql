{{config(tags=["navigation"])}}


with SERVICE_MAPPING_SMADEX as (
  
  select
        *
    from {{ source('RAW_PASSWAP','SERVICE_MAPPING_SMADEX')}}

)
select * from SERVICE_MAPPING_SMADEX