{{ config(schema="_airbyte_public", tags=["top-level-intermediate"]) }}
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
select
    cast(random as {{ dbt_utils.type_string() }}) as random,
    cast({{ adapter.quote('id') }} as {{ dbt_utils.type_float() }}) as {{ adapter.quote('id') }},
    _airbyte_emitted_at
from {{ ref('orb_test_data_ab1') }}
-- orb_test_data

