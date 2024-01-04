{{config(tags=["subs"])}}


with g_data_service_ref as (
  
  select
        *
    from {{ source('RAW_PASSWAP','G_DATA_SERVICE_REF')}}

)
select * from g_data_service_ref