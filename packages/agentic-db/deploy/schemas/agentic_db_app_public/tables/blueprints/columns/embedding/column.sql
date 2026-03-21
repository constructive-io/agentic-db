-- Deploy: schemas/agentic_db_app_public/tables/blueprints/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprints/table
-- requires: schemas/agentic_db_app_public/tables/blueprints/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.blueprints 
  ADD COLUMN embedding vector(768);

