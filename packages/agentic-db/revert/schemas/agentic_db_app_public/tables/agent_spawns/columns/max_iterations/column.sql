-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/columns/max_iterations/column


ALTER TABLE agentic_db_app_public.agent_spawns 
  DROP COLUMN max_iterations RESTRICT;


