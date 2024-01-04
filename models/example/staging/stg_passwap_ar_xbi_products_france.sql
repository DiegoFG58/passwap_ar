{{config(tags=["navigation"])}}


with PRODUCTS_FRANCE as (
  
  select
        *
    from {{ source('RAW_PASSWAP','PRODUCTS_FRANCE')}}

)
select * from PRODUCTS_FRANCE