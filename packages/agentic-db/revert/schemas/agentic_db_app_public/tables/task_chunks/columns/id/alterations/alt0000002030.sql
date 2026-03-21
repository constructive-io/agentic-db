-- Revert: schemas/agentic_db_app_public/tables/task_chunks/columns/id/alterations/alt0000002030


ALTER TABLE "agentic_db_app_public".task_chunks 
  ALTER COLUMN id DROP NOT NULL;


