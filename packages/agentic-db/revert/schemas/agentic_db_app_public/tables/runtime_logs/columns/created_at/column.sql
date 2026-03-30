-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/created_at/column


ALTER TABLE "agentic_db_app_public".runtime_logs 
  DROP COLUMN created_at RESTRICT;


