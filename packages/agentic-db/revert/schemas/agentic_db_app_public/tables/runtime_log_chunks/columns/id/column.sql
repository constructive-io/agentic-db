-- Revert: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/id/column


ALTER TABLE "agentic_db_app_public".runtime_log_chunks 
  DROP COLUMN id RESTRICT;


