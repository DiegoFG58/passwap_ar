{{config(tags=["navigation"])}}


with ref_ad_all as (
  
  select
        *
    from {{ source('RAW_PUBLIC','REF_AD_ALL')}}

)
select * from ref_ad_all