-- Revert: schemas/agent_db_app_public/tables/agent_spawns/columns/max_iterations/column


ALTER TABLE agent_db_app_public.agent_spawns 
  DROP COLUMN max_iterations RESTRICT;


