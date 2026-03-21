-- Revert: schemas/agentic_db_app_public/tables/execution_log/columns/entity_id/alterations/alt0000004114


ALTER TABLE agentic_db_app_public.execution_log 
  ALTER COLUMN entity_id DROP NOT NULL;


