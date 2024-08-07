{{
    config(
        materialized = 'view'
    )
}}
select
    *
from
    tpcdi.tpcdi_100_dbsql_100_stage.customermgmt

