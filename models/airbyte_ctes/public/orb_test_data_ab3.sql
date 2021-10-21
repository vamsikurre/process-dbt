{{ config(schema="_airbyte_public", tags=["top-level-intermediate"]) }}
-- SQL model to build a hash column based on the values of this record
select
    {{ dbt_utils.surrogate_key([
        'random',
        adapter.quote('id'),
    ]) }} as _airbyte_orb_test_data_hashid,
    tmp.*
from {{ ref('orb_test_data_ab2') }} tmp
-- orb_test_data

