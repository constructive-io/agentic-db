-- Deploy: schemas/agentic_db_app_public/tables/event_notes/constraints/event_notes_event_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/event_notes/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.event_notes 
  ADD CONSTRAINT event_notes_event_id_fkey 
    FOREIGN KEY(event_id) 
    REFERENCES agentic_db_app_public.events (id) 
    ON DELETE CASCADE;

