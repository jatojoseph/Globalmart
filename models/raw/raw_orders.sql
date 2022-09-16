{{
    config(
        materialized='table'
    )
}}
select * from raw.globalmart.orders