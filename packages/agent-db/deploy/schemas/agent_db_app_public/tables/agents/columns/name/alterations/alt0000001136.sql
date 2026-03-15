-- Deploy: schemas/agent_db_app_public/tables/agents/columns/name/alterations/alt0000001136
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/name/column
-- requires: schemas/agent_db_app_public/tables/agents/columns/updated_at/alterations/alt0000001135


ALTER TABLE agent_db_app_public.agents 
  ALTER COLUMN name SET NOT NULL;

