{{config(tags=["navigation"])}}


select
    *
from {{ref('stg_passwap_ar_tracking_ref_ad_all')}}
where 
    upper(country) = 'AR'