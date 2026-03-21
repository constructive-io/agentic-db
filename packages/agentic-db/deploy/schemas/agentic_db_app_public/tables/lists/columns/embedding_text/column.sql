-- Deploy: schemas/agentic_db_app_public/tables/lists/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/lists/table
-- requires: schemas/agentic_db_app_public/tables/lists/columns/tags/column


ALTER TABLE agentic_db_app_public.lists 
  ADD COLUMN embedding_text text;

