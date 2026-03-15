-- Deploy: schemas/agent_db_app_public/tables/agents/columns/status/alterations/alt0000001137
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/config/column
-- requires: schemas/agent_db_app_public/tables/agents/columns/status/column



ALTER TABLE agent_db_app_public.agents 
    ALTER COLUMN status SET DEFAULT 'idle';

