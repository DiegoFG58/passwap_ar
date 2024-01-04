{{config(tags=["navigation"])}}


with dvp4m_atom_services as (
  
  select
        *

    from {{ source('RAW_PASSWAP','DVP4M_ATOM_SERVICES')}}

)
select * from dvp4m_atom_services