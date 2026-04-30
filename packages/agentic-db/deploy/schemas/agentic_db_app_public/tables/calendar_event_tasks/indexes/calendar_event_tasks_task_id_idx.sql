-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_tasks/indexes/calendar_event_tasks_task_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/columns/task_id/column


CREATE INDEX calendar_event_tasks_task_id_idx ON agentic_db_app_public.calendar_event_tasks USING BTREE ( task_id );

