-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".tasks_chunks 
  DROP COLUMN chunk_index RESTRICT;


