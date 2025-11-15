{{
  config(
    materialized = 'table',
    )
}}

select
    aircraft_code,
    model,
    "range"
from
    {{ source('avia', 'aircrafts_data') }}