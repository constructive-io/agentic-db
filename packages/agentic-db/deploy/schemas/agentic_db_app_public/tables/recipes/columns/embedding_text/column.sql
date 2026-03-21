-- Deploy: schemas/agentic_db_app_public/tables/recipes/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/tags/column


ALTER TABLE agentic_db_app_public.recipes 
  ADD COLUMN embedding_text text;

