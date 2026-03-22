-- Deploy: schemas/agentic_db_app_public/tables/interaction_chunks/columns/interaction_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/table
-- requires: schemas/agentic_db_app_public/tables/note_chunks/indexes/note_chunks_note_id_idx


ALTER TABLE agentic_db_app_public.interaction_chunks 
  ADD COLUMN interaction_id uuid;

