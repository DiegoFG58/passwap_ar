{{config(tags=["updates"])}}


with kw_not_mapped as (
  
  select
        *
    from {{ source('RAW_PASSWAP','KEYWORD_NOT_MAPPED')}}

)
select * from kw_not_mapped