-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table


ALTER TABLE agentic_db_app_public.notes 
  ADD COLUMN embedding vector(768);

