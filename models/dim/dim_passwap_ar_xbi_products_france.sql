select
    * 
from {{ref('stg_passwap_ar_xbi_products_france')}}
where 
    upper(country) = 'AR'
