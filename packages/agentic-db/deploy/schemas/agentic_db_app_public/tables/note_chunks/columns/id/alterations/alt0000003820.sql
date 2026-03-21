-- Deploy: schemas/agentic_db_app_public/tables/note_chunks/columns/id/alterations/alt0000003820
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/note_chunks/table
-- requires: schemas/agentic_db_app_public/tables/note_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/columns/embedding/column



ALTER TABLE agentic_db_app_public.note_chunks 
    ALTER COLUMN id SET DEFAULT uuidv7();

