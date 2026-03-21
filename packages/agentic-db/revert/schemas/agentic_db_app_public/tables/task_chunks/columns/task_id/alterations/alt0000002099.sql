-- Revert: schemas/agentic_db_app_public/tables/task_chunks/columns/task_id/alterations/alt0000002099


ALTER TABLE "agentic_db_app_public".task_chunks 
  ALTER COLUMN task_id DROP NOT NULL;


