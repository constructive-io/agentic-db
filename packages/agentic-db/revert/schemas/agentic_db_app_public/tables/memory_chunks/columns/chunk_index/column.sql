-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".memory_chunks 
  DROP COLUMN chunk_index RESTRICT;


