-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_tasks/indexes/calendar_event_tasks_calendar_event_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/columns/calendar_event_id/column


CREATE INDEX calendar_event_tasks_calendar_event_id_idx ON agentic_db_app_public.calendar_event_tasks USING BTREE ( calendar_event_id );

