-- Revert: schemas/agentic_db_app_public/tables/runtime_metrics/columns/updated_at/column


ALTER TABLE agentic_db_app_public.runtime_metrics 
  DROP COLUMN updated_at RESTRICT;


