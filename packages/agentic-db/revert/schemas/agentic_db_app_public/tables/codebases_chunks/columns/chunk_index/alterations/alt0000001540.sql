-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/columns/chunk_index/alterations/alt0000001540


ALTER TABLE "agentic_db_app_public".codebases_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


