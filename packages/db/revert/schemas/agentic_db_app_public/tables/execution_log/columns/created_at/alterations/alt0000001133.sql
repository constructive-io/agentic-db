-- Revert: schemas/agentic_db_app_public/tables/execution_log/columns/created_at/alterations/alt0000001133


ALTER TABLE "agentic_db_app_public".execution_log 
  ALTER COLUMN created_at DROP NOT NULL;


