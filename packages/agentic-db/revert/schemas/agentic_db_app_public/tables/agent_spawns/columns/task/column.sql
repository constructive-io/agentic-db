-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/columns/task/column


ALTER TABLE agentic_db_app_public.agent_spawns 
  DROP COLUMN task RESTRICT;


