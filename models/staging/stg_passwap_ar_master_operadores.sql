{{config(tags=["investment"])}}

with master_operadores as (
  
  select
        *
    from {{ source('RAW_PASSWAP','MASTER_OPERADORES')}}

)
select * from master_operadores