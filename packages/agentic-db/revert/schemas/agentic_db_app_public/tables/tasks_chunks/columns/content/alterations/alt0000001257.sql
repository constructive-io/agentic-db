-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/columns/content/alterations/alt0000001257


ALTER TABLE "agentic_db_app_public".tasks_chunks 
  ALTER COLUMN content DROP NOT NULL;


