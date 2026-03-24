-- Revert: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/id/alterations/alt0000001364


ALTER TABLE "agentic_db_app_public".runtime_logs_chunks 
  ALTER COLUMN id DROP NOT NULL;


