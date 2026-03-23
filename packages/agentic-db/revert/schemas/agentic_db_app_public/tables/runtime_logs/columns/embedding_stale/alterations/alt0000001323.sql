-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/embedding_stale/alterations/alt0000001323


ALTER TABLE "agentic_db_app_public".runtime_logs 
  ALTER COLUMN embedding_stale DROP NOT NULL;


