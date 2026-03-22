-- Revert: schemas/agentic_db_app_public/tables/runtime_metrics/columns/unit/column


ALTER TABLE agentic_db_app_public.runtime_metrics 
  DROP COLUMN unit RESTRICT;


