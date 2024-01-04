{{config(tags=["exec"])}}


with arpu as (
  
  select
        *

    from {{ source('RAW_PASSWAP','EXEC_ESTIMATED_ARPU')}}

)
select * from arpu