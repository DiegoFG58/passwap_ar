{{config(tags=["navigation"])}}


with FIVETRAN_GA_METADATA_CAMPAIGN as (
  
  select
        *
    from {{ source('RAW_PASSWAP','GADS_CAMPAIGN')}}

)
select * from FIVETRAN_GA_METADATA_CAMPAIGN