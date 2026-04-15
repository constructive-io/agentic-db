-- Deploy: schemas/agentic_db_app_public/tables/event_notes/columns/event_id/alterations/alt0000013645
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_notes/table
-- requires: schemas/agentic_db_app_public/tables/event_notes/columns/event_id/column
-- requires: schemas/agentic_db_app_public/tables/deal_notes/indexes/deal_notes_note_id_idx


ALTER TABLE agentic_db_app_public.event_notes 
  ALTER COLUMN event_id SET NOT NULL;

