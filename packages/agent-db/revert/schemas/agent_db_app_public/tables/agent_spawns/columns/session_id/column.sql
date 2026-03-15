-- Revert: schemas/agent_db_app_public/tables/agent_spawns/columns/session_id/column


ALTER TABLE agent_db_app_public.agent_spawns 
  DROP COLUMN session_id RESTRICT;


