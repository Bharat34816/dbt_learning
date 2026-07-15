{{ config(
    materialized='view',
    schema='L2_PROCESSING',
    tags=['landing_display']
) }}


select *
from {{ source('landing', 'ordr') }}