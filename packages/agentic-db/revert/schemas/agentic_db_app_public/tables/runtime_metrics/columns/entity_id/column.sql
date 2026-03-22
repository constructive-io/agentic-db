-- Revert: schemas/agentic_db_app_public/tables/runtime_metrics/columns/entity_id/column


ALTER TABLE agentic_db_app_public.runtime_metrics 
  DROP COLUMN entity_id RESTRICT;


