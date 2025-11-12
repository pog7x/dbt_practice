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
    {{ source('bookings', 'aircrafts_data') }}