-- Revert: schemas/agentic_db_app_public/tables/execution_log/columns/duration_ms/column


ALTER TABLE "agentic_db_app_public".execution_log 
  DROP COLUMN duration_ms RESTRICT;


