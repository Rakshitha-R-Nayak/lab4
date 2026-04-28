select
    *
from {{ source('raw_price', 'eia_price_raw') }}