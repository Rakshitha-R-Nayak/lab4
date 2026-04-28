{{ config(materialized='table') }}

select
    {{ clean_text('State') }} as state,
    {{ clean_decimal('residential_2025_ytd') }} as residential_2025_ytd,
    {{ clean_decimal('residential_2024_ytd') }} as residential_2024_ytd,
    {{ clean_decimal('commercial_2025_ytd') }} as commercial_2025_ytd,
    {{ clean_decimal('commercial_2024_ytd') }} as commercial_2024_ytd,
    {{ clean_decimal('industrial_2025_ytd') }} as industrial_2025_ytd,
    {{ clean_decimal('industrial_2024_ytd') }} as industrial_2024_ytd,
    {{ clean_decimal('transportation_2025_ytd') }} as transportation_2025_ytd,
    {{ clean_decimal('transportation_2024_ytd') }} as transportation_2024_ytd,
    {{ clean_decimal('all_sectors_2025_ytd') }} as all_sectors_2025_ytd,
    {{ clean_decimal('all_sectors_2024_ytd') }} as all_sectors_2024_ytd

from {{ source('raw_price', 'eia_price_raw') }}