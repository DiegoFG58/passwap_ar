{{config(tags=["exec"])}}

with diff as 
(
  
  select
        *
    from {{ source('RAW_PASSWAP','JETDW_GDATA_SETTLEMENT_DIFFERENCE')}}

)
select * from diff