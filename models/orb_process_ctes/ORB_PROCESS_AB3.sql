{{ config(schema="_AIRBYTE_AIRBYTE_SCHEMA", tags=["top-level-intermediate"]) }}
-- SQL model to build a hash column based on the values of this record
select
    *,
    {{ dbt_utils.surrogate_key([
        'ID',
        'JOB',
        'NAME',
        'PHASE',
        'JOB_ID',
        'STATUS',
        'DETAILS',
        'FIRE_ID',
        'END_TIME',
        'PARENT_ID',
        'REPORT_ID',
        'TENANT_ID',
        'CREATED_BY',
        'EXPORT_JOB',
        'OUTPUTTYPE',
        'SCHED_NAME',
        'START_TIME',
        'DESCRIPTION',
        'LOGFILEPATH',
        'SCHEDULE_ID',
        'TRIGGER_KEY',
        'CREATED_DATE',
        'NEXT_PROCESS',
        'PREV_PROCESS',
        'INSTANCE_NAME',
        'SCHEDULE_TIME',
        'CRONEXPRESSION',
        'OUTPUTFILEPATH',
        'ADDITIONAL_INFO',
        'LAST_MODIFIED_BY',
        'SOFT_DELETE_FLAG',
        'LAST_MODIFIED_DATE',
    ]) }} as _AIRBYTE_ORB_PROCESS_HASHID
from {{ ref('ORB_PROCESS_AB2') }}
-- ORB_PROCESS

