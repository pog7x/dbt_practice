
{{
  config(
    materialized = 'table',
    )
}}

select
    ticket_no,
    flight_id,
    boarding_no,
    seat_no
from
    {{ source('avia', 'boarding_passes') }}
    