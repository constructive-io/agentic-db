-- Revert: schemas/agentic_db_app_public/tables/task_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".task_chunks 
  DROP COLUMN created_at RESTRICT;


