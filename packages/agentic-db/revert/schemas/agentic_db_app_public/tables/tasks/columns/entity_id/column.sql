-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.tasks 
  DROP COLUMN entity_id RESTRICT;


