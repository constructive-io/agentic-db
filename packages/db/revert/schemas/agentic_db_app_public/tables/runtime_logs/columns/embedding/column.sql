-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/embedding/column


ALTER TABLE "agentic_db_app_public".runtime_logs 
  DROP COLUMN embedding RESTRICT;


