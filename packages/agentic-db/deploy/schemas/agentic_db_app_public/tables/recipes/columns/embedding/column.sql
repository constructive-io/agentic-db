-- Deploy: schemas/agentic_db_app_public/tables/recipes/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.recipes 
  ADD COLUMN embedding vector(768);

