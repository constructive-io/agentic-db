-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".thread_chunks 
  DROP COLUMN chunk_index RESTRICT;


