{{
  config(
    materialized = 'table',
    )
}}

select
    book_ref,
    book_date,
    total_amount
from
    {{ ref('stg_avia__bookings') }}