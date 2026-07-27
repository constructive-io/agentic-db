-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/embedding_updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table


ALTER TABLE agentic_db_app_public.prompts 
  ADD COLUMN embedding_updated_at timestamptz;

