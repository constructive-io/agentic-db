-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/columns/updated_at/alterations/alt0000001240


ALTER TABLE "agentic_db_app_public".tasks_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


