-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".codebases_chunks 
  DROP COLUMN chunk_index RESTRICT;


