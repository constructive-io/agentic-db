-- Revert: schemas/agentic_db_app_public/tables/task_chunks/columns/content/alterations/alt0000002038


ALTER TABLE "agentic_db_app_public".task_chunks 
  ALTER COLUMN content DROP NOT NULL;


