-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".tasks 
  DROP COLUMN created_at RESTRICT;


