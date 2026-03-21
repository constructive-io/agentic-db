-- Deploy: schemas/agentic_db_app_public/tables/interactions/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.interactions 
  ADD COLUMN embedding vector(768);

