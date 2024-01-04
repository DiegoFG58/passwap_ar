{{config(tags=["navigation"])}}


with SERVICE_MAPPING as (
  
  select
        *
    from {{ source('RAW_PASSWAP','SERVICE_MAPPING')}}

)
select * from SERVICE_MAPPING