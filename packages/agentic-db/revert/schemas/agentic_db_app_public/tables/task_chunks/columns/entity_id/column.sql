-- Revert: schemas/agentic_db_app_public/tables/task_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.task_chunks 
  DROP COLUMN entity_id RESTRICT;


