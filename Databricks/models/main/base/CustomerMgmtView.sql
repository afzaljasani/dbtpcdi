{{
    config(
        materialized = 'view'
    )
}}
select
    *
from
    tpcdi.tpcdi_raw_data_100_stage.customermgmt

