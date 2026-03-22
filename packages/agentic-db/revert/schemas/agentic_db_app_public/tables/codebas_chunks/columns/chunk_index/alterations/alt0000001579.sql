-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/chunk_index/alterations/alt0000001579


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


