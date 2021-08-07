{{ config(schema="_AIRBYTE_AIRBYTE_SCHEMA", tags=["top-level-intermediate"]) }}
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
select
    cast(ID as {{ dbt_utils.type_float() }}) as ID,
    cast(JOB as {{ dbt_utils.type_float() }}) as JOB,
    cast(NAME as {{ dbt_utils.type_string() }}) as NAME,
    cast(PHASE as {{ dbt_utils.type_string() }}) as PHASE,
    cast(JOB_ID as {{ dbt_utils.type_float() }}) as JOB_ID,
    cast(STATUS as {{ dbt_utils.type_string() }}) as STATUS,
    cast(DETAILS as {{ dbt_utils.type_string() }}) as DETAILS,
    cast(FIRE_ID as {{ dbt_utils.type_string() }}) as FIRE_ID,
    cast(END_TIME as {{ dbt_utils.type_string() }}) as END_TIME,
    cast(PARENT_ID as {{ dbt_utils.type_float() }}) as PARENT_ID,
    cast(REPORT_ID as {{ dbt_utils.type_float() }}) as REPORT_ID,
    cast(TENANT_ID as {{ dbt_utils.type_float() }}) as TENANT_ID,
    cast(CREATED_BY as {{ dbt_utils.type_float() }}) as CREATED_BY,
    cast(EXPORT_JOB as {{ dbt_utils.type_float() }}) as EXPORT_JOB,
    cast(OUTPUTTYPE as {{ dbt_utils.type_string() }}) as OUTPUTTYPE,
    cast(SCHED_NAME as {{ dbt_utils.type_string() }}) as SCHED_NAME,
    cast(START_TIME as {{ dbt_utils.type_string() }}) as START_TIME,
    cast(DESCRIPTION as {{ dbt_utils.type_string() }}) as DESCRIPTION,
    cast(LOGFILEPATH as {{ dbt_utils.type_string() }}) as LOGFILEPATH,
    cast(SCHEDULE_ID as {{ dbt_utils.type_float() }}) as SCHEDULE_ID,
    cast(TRIGGER_KEY as {{ dbt_utils.type_string() }}) as TRIGGER_KEY,
    cast(CREATED_DATE as {{ dbt_utils.type_string() }}) as CREATED_DATE,
    cast(NEXT_PROCESS as {{ dbt_utils.type_float() }}) as NEXT_PROCESS,
    cast(PREV_PROCESS as {{ dbt_utils.type_float() }}) as PREV_PROCESS,
    cast(INSTANCE_NAME as {{ dbt_utils.type_string() }}) as INSTANCE_NAME,
    cast(SCHEDULE_TIME as {{ dbt_utils.type_string() }}) as SCHEDULE_TIME,
    cast(CRONEXPRESSION as {{ dbt_utils.type_string() }}) as CRONEXPRESSION,
    cast(OUTPUTFILEPATH as {{ dbt_utils.type_string() }}) as OUTPUTFILEPATH,
    cast(ADDITIONAL_INFO as {{ dbt_utils.type_string() }}) as ADDITIONAL_INFO,
    cast(LAST_MODIFIED_BY as {{ dbt_utils.type_float() }}) as LAST_MODIFIED_BY,
    cast(SOFT_DELETE_FLAG as {{ dbt_utils.type_float() }}) as SOFT_DELETE_FLAG,
    cast(LAST_MODIFIED_DATE as {{ dbt_utils.type_string() }}) as LAST_MODIFIED_DATE,
    _airbyte_emitted_at
from {{ ref('ORB_PROCESS_AB1') }}
-- ORB_PROCESS

