{{
  config(
    materialized = 'incremental',
    incremental_strategy = 'merge',
    unique_key = ['book_ref'],
    tags = ['bookings'],
    merge_update_columns = ['total_amount'],
    on_schema_change = 'sync_all_columns'
  )
}}

select
    book_ref,
    book_date,
    total_amount
from
    {{ source('avia', 'bookings') }}
{% if is_incremental() %}
  where book_date > current_date - interval '7 day'
{% endif %}