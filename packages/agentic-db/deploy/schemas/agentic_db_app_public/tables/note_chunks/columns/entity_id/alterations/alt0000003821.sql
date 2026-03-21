-- Deploy: schemas/agentic_db_app_public/tables/note_chunks/columns/entity_id/alterations/alt0000003821
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/note_chunks/table
-- requires: schemas/agentic_db_app_public/tables/note_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.note_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

