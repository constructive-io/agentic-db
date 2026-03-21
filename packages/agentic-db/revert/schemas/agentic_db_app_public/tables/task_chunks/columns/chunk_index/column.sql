-- Revert: schemas/agentic_db_app_public/tables/task_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".task_chunks 
  DROP COLUMN chunk_index RESTRICT;


