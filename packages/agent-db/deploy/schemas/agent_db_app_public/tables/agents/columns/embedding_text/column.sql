-- Deploy: schemas/agent_db_app_public/tables/agents/columns/embedding_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/last_active_at/column


ALTER TABLE agent_db_app_public.agents 
  ADD COLUMN embedding_text text;

