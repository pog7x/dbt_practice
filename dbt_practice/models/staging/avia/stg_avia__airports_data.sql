{{
  config(
    materialized = 'table',
    )
}}

select
    airport_code,
    airport_name,
    city,
    coordinates,
    timezone
from
    {{ source('avia', 'airports_data') }}