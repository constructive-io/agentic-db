-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/columns/agent_id/column


ALTER TABLE agentic_db_app_public.agent_spawns 
  DROP COLUMN agent_id RESTRICT;


