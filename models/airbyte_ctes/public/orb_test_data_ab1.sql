{{ config(schema="_airbyte_public", tags=["top-level-intermediate"]) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
select
    {{ json_extract_scalar('_airbyte_data', ['random'], ['random']) }} as random,
    {{ json_extract_scalar('_airbyte_data', ['id'], ['id']) }} as {{ adapter.quote('id') }},
    _airbyte_emitted_at
from {{ source('public', '_airbyte_raw_orb_inc_test_data') }} as table_alias
-- orb_test_data

