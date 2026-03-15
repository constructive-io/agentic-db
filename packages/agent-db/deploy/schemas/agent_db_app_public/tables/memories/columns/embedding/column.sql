-- Deploy: schemas/agent_db_app_public/tables/memories/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/embedding_text/column


ALTER TABLE agent_db_app_public.memories 
  ADD COLUMN embedding vector(768);

