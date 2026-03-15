-- Revert: schemas/agent_db_app_public/tables/tasks/columns/entity_id/column


ALTER TABLE agent_db_app_public.tasks 
  DROP COLUMN entity_id RESTRICT;


