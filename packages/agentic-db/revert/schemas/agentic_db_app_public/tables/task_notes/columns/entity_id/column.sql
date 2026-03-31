-- Revert: schemas/agentic_db_app_public/tables/task_notes/columns/entity_id/column


ALTER TABLE agentic_db_app_public.task_notes 
  DROP COLUMN entity_id RESTRICT;


