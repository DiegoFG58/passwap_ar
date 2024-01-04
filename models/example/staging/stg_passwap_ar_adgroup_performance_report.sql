{{config(tags=["navigation"])}}


with ADGROUP_PERFORMANCE_REPORT as (
  
  select
        *
    from {{ source('RAW_PASSWAP','ADGROUP_PERFORMANCE_REPORT')}}

)
select * from ADGROUP_PERFORMANCE_REPORT