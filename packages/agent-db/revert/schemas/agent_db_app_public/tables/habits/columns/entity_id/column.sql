-- Revert: schemas/agent_db_app_public/tables/habits/columns/entity_id/column


ALTER TABLE agent_db_app_public.habits 
  DROP COLUMN entity_id RESTRICT;


