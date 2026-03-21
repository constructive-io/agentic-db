-- Revert: schemas/agentic_db_app_public/tables/execution_log/columns/entity_id/column


ALTER TABLE agentic_db_app_public.execution_log 
  DROP COLUMN entity_id RESTRICT;


