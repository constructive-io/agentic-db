-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/columns/parent_agent_id/alterations/alt0000004226
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/parent_agent_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/updated_at/alterations/alt0000004225


ALTER TABLE agentic_db_app_public.agent_spawns 
  ALTER COLUMN parent_agent_id SET NOT NULL;

