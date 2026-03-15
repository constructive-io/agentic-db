-- Revert: schemas/agent_db_app_public/tables/agent_spawns/columns/created_at/column


ALTER TABLE agent_db_app_public.agent_spawns 
  DROP COLUMN created_at RESTRICT;


