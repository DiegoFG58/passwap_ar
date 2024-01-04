{{config(tags=["investment"])}}



with master_inv as (
  
  select
        *
    from {{ source('RAW_PASSWAP','MASTER_INVENTARIOS')}}

)
select * from master_inv