-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_tasks/columns/calendar_event_id/alterations/alt0000000868
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx
-- requires: schemas/agentic_db_app_public/tables/calendar_event_tasks/columns/calendar_event_id/column


ALTER TABLE agentic_db_app_public.calendar_event_tasks 
  ALTER COLUMN calendar_event_id SET NOT NULL;

