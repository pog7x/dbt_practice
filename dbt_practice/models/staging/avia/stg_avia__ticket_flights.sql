{{
  config(
    materialized = 'table',
    )
}}

select
  ticket_no,
  flight_id,
  fare_conditions,
  amount
from
    {{ source('avia', 'ticket_flights') }}