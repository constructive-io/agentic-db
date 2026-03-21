-- Deploy: schemas/agentic_db_app_public/tables/templates/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.templates 
  ADD COLUMN embedding vector(768);

