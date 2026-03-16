-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".tasks 
  DROP COLUMN updated_at RESTRICT;


