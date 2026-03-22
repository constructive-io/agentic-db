-- Revert: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/chunk_index/alterations/alt0000001718


ALTER TABLE "agentic_db_app_public".runtime_log_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


