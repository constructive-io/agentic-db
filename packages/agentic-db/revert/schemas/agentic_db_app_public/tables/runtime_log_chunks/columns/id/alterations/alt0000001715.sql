-- Revert: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/id/alterations/alt0000001715


ALTER TABLE "agentic_db_app_public".runtime_log_chunks 
  ALTER COLUMN id DROP NOT NULL;


