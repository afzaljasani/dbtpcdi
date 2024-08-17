{{
    config(
        materialized = 'view'
    )
}}
select
    *
from
    {{ source('tpcdi', 'v_dailymarketincremental') }}




