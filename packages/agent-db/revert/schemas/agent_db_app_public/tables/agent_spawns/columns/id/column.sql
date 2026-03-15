-- Revert: schemas/agent_db_app_public/tables/agent_spawns/columns/id/column


ALTER TABLE agent_db_app_public.agent_spawns 
  DROP COLUMN id RESTRICT;


