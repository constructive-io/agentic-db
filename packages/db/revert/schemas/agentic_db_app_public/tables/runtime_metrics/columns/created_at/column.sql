-- Revert: schemas/agentic_db_app_public/tables/runtime_metrics/columns/created_at/column


ALTER TABLE "agentic_db_app_public".runtime_metrics 
  DROP COLUMN created_at RESTRICT;


