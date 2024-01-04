{{config(tags=["investment"])}}

with master_kw as (
  
  select
        *
    from {{ source('RAW_PASSWAP','MASTER_KEYWORDS')}}

)
select * from master_kw