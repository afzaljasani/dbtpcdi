{{
    config(
        materialized = 'table'
    )
}}
select
    *
from
    {{ source('tpcdi_prod', 'tradetype') }}

