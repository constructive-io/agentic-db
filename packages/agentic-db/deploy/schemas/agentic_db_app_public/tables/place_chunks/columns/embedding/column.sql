-- Deploy: schemas/agentic_db_app_public/tables/place_chunks/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/place_chunks/table
-- requires: schemas/agentic_db_app_public/tables/place_chunks/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.place_chunks 
  ADD COLUMN embedding vector(768);

