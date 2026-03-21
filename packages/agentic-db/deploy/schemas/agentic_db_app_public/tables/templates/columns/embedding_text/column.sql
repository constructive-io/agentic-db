-- Deploy: schemas/agentic_db_app_public/tables/templates/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/tags/column


ALTER TABLE agentic_db_app_public.templates 
  ADD COLUMN embedding_text text;

