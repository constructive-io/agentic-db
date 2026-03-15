-- Deploy: schemas/agent_db_app_public/tables/chunks/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/chunks/columns/end_line/column


ALTER TABLE agent_db_app_public.chunks 
  ADD COLUMN embedding vector(768);

