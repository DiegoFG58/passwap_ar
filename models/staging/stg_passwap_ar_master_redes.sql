{{config(tags=["investment"])}}

with master_redes as (
  
  select
        *
    from {{ source('RAW_PASSWAP','MASTER_REDES')}}

)
select * from master_redes