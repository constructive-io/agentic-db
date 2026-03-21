-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/columns/parent_agent_id/alterations/alt0000004226


ALTER TABLE agentic_db_app_public.agent_spawns 
  ALTER COLUMN parent_agent_id DROP NOT NULL;


