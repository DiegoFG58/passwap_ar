{{config(tags=["updates"])}}


with N_SERVICIOS as (
  
  select
        *
    from {{ source('RAW_PASSWAP','LATAM_N_SERVICIOS')}}

)
select * from N_SERVICIOS