{{config(tags=["navigation"])}}


with SNOWPLOW_SESSIONS as (
  
  select
        *
  from {{ source('RAW_PASSWAP','STATS_SESSIONS_DV_CONTENT_V2')}}

)
select * from SNOWPLOW_SESSIONS