-- Revert: schemas/agentic_db_app_public/tables/execution_log/columns/output/column


ALTER TABLE "agentic_db_app_public".execution_log 
  DROP COLUMN output RESTRICT;


