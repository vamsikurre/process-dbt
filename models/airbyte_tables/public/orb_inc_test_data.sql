{{ config(schema="public", tags=["top-level"]) }}
-- Final base SQL model
select
    random,
    {{ adapter.quote('id') }},
    _airbyte_emitted_at,
    _airbyte_orb_inc_test_data_hashid
from {{ ref('orb_test_data_ab3') }}
-- orb_test_data from {{ source('public', '_airbyte_raw_orb_inc_test_data') }}

