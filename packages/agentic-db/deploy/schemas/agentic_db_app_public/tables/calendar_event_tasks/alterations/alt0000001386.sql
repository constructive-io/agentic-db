-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_tasks/alterations/alt0000001386
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


COMMENT ON TABLE agentic_db_app_public.calendar_event_tasks IS E'@behavior +manyToMany';

