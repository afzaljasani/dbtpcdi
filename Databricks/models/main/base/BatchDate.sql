{{
    config(
        materialized = 'table'
    )
}}

select
    *
from
    {{ source('tpcdi', 'v_batchdate') }}



