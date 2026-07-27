-- Deploy: schemas/agentic_db_app_public/tables/event_notes/columns/note_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_notes/table


ALTER TABLE agentic_db_app_public.event_notes 
  ADD COLUMN note_id uuid;

