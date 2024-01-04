{{config(tags=["navigation"])}}


with TRACKING_SMADEX as (
  
  select
        *
    from {{ source('RAW_SMADEX','SMADEX_VIEW')}}

)
select * from TRACKING_SMADEX