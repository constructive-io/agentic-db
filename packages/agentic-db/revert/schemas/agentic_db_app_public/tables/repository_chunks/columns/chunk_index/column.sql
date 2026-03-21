-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".repository_chunks 
  DROP COLUMN chunk_index RESTRICT;


