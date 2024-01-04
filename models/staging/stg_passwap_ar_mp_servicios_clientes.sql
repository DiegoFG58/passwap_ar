{{config(tags=["subs"])}}


with g_data_service_ref as (
  
  select
        *
    from {{ source('RAW_PASSWAP','COLUMBUS_MP_SERVICIOS_CLIENTES')}}

)
select * from g_data_service_ref