{{config(tags=["billing"])}}


with es_billing as (
  
  select
        *

    from {{ source('RAW_PASSWAP','AR_BILLING')}}

)
select * from es_billing