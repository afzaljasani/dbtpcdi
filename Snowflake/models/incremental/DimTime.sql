{{
    config(
        materialized = 'table'
    )
}}
select
    *
from
    {{ source('tpcdi', 'dimtime') }}