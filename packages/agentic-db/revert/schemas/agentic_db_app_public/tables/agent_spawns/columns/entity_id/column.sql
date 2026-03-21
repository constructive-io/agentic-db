-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/columns/entity_id/column


ALTER TABLE agentic_db_app_public.agent_spawns 
  DROP COLUMN entity_id RESTRICT;


