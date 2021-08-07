{{ config(schema="_AIRBYTE_AIRBYTE_SCHEMA", tags=["top-level-intermediate"]) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
select
    {{ json_extract_scalar('_airbyte_data', ['ID'], ['ID']) }} as ID,
    {{ json_extract_scalar('_airbyte_data', ['JOB'], ['JOB']) }} as JOB,
    {{ json_extract_scalar('_airbyte_data', ['NAME'], ['NAME']) }} as NAME,
    {{ json_extract_scalar('_airbyte_data', ['PHASE'], ['PHASE']) }} as PHASE,
    {{ json_extract_scalar('_airbyte_data', ['JOB_ID'], ['JOB_ID']) }} as JOB_ID,
    {{ json_extract_scalar('_airbyte_data', ['STATUS'], ['STATUS']) }} as STATUS,
    {{ json_extract_scalar('_airbyte_data', ['DETAILS'], ['DETAILS']) }} as DETAILS,
    {{ json_extract_scalar('_airbyte_data', ['FIRE_ID'], ['FIRE_ID']) }} as FIRE_ID,
    {{ json_extract_scalar('_airbyte_data', ['END_TIME'], ['END_TIME']) }} as END_TIME,
    {{ json_extract_scalar('_airbyte_data', ['PARENT_ID'], ['PARENT_ID']) }} as PARENT_ID,
    {{ json_extract_scalar('_airbyte_data', ['REPORT_ID'], ['REPORT_ID']) }} as REPORT_ID,
    {{ json_extract_scalar('_airbyte_data', ['TENANT_ID'], ['TENANT_ID']) }} as TENANT_ID,
    {{ json_extract_scalar('_airbyte_data', ['CREATED_BY'], ['CREATED_BY']) }} as CREATED_BY,
    {{ json_extract_scalar('_airbyte_data', ['EXPORT_JOB'], ['EXPORT_JOB']) }} as EXPORT_JOB,
    {{ json_extract_scalar('_airbyte_data', ['OUTPUTTYPE'], ['OUTPUTTYPE']) }} as OUTPUTTYPE,
    {{ json_extract_scalar('_airbyte_data', ['SCHED_NAME'], ['SCHED_NAME']) }} as SCHED_NAME,
    {{ json_extract_scalar('_airbyte_data', ['START_TIME'], ['START_TIME']) }} as START_TIME,
    {{ json_extract_scalar('_airbyte_data', ['DESCRIPTION'], ['DESCRIPTION']) }} as DESCRIPTION,
    {{ json_extract_scalar('_airbyte_data', ['LOGFILEPATH'], ['LOGFILEPATH']) }} as LOGFILEPATH,
    {{ json_extract_scalar('_airbyte_data', ['SCHEDULE_ID'], ['SCHEDULE_ID']) }} as SCHEDULE_ID,
    {{ json_extract_scalar('_airbyte_data', ['TRIGGER_KEY'], ['TRIGGER_KEY']) }} as TRIGGER_KEY,
    {{ json_extract_scalar('_airbyte_data', ['CREATED_DATE'], ['CREATED_DATE']) }} as CREATED_DATE,
    {{ json_extract_scalar('_airbyte_data', ['NEXT_PROCESS'], ['NEXT_PROCESS']) }} as NEXT_PROCESS,
    {{ json_extract_scalar('_airbyte_data', ['PREV_PROCESS'], ['PREV_PROCESS']) }} as PREV_PROCESS,
    {{ json_extract_scalar('_airbyte_data', ['INSTANCE_NAME'], ['INSTANCE_NAME']) }} as INSTANCE_NAME,
    {{ json_extract_scalar('_airbyte_data', ['SCHEDULE_TIME'], ['SCHEDULE_TIME']) }} as SCHEDULE_TIME,
    {{ json_extract_scalar('_airbyte_data', ['CRONEXPRESSION'], ['CRONEXPRESSION']) }} as CRONEXPRESSION,
    {{ json_extract_scalar('_airbyte_data', ['OUTPUTFILEPATH'], ['OUTPUTFILEPATH']) }} as OUTPUTFILEPATH,
    {{ json_extract_scalar('_airbyte_data', ['ADDITIONAL_INFO'], ['ADDITIONAL_INFO']) }} as ADDITIONAL_INFO,
    {{ json_extract_scalar('_airbyte_data', ['LAST_MODIFIED_BY'], ['LAST_MODIFIED_BY']) }} as LAST_MODIFIED_BY,
    {{ json_extract_scalar('_airbyte_data', ['SOFT_DELETE_FLAG'], ['SOFT_DELETE_FLAG']) }} as SOFT_DELETE_FLAG,
    {{ json_extract_scalar('_airbyte_data', ['LAST_MODIFIED_DATE'], ['LAST_MODIFIED_DATE']) }} as LAST_MODIFIED_DATE,
    _airbyte_emitted_at
from {{ source('AIRBYTE_SCHEMA', '_AIRBYTE_RAW_ORB_PROCESS') }}
-- ORB_PROCESS

