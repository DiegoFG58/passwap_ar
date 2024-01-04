{{config(tags=["investment"])}}

with x_master_operadores as (
  
  select
        *
    from {{ source('RAW_PASSWAP','X_MASTER_OPERADORES')}}

)
select * from x_master_operadores