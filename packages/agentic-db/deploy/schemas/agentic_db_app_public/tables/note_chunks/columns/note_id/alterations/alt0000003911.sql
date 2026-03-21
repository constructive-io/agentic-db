-- Deploy: schemas/agentic_db_app_public/tables/note_chunks/columns/note_id/alterations/alt0000003911
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/note_chunks/table
-- requires: schemas/agentic_db_app_public/tables/note_chunks/columns/note_id/column
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/indexes/venue_chunks_venue_id_idx


ALTER TABLE agentic_db_app_public.note_chunks 
  ALTER COLUMN note_id SET NOT NULL;

