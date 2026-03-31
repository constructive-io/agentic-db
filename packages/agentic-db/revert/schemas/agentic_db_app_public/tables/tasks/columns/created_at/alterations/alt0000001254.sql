-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/created_at/alterations/alt0000001254


ALTER TABLE "agentic_db_app_public".tasks 
  ALTER COLUMN created_at DROP NOT NULL;


