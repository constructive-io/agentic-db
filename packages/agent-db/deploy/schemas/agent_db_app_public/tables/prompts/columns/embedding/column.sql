-- Deploy: schemas/agent_db_app_public/tables/prompts/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/embedding_text/column


ALTER TABLE agent_db_app_public.prompts 
  ADD COLUMN embedding vector(768);

