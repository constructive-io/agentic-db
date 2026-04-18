-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_notes/columns/note_id/alterations/alt0000001384
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/columns/note_id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.calendar_event_notes 
  ALTER COLUMN note_id SET NOT NULL;

